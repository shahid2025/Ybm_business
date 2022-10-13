import 'dart:async';
import 'dart:developer';

// import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta/meta.dart';
import 'package:ybm_business/Services/googlesignin.dart';
import 'package:ybm_business/Services/sharedpreference.dart';
import 'package:ybm_business/model/user_model.dart';
import 'package:ybm_business/utils.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      // TODO: implement event handler
       try {

        if (event is TheRegisterEvent) {
          emit.call(RegisterLoading());
           try {
            Dio dio = new Dio();

            //get token api call

            Response response =
                await dio.get(ApiUrl.getToken, queryParameters: {
              "key": ApiUrl.key,
            });

            String getToken = response.data['token'].toString();
            log(getToken);

            // register api call
            dio.options.headers["Authorization"] = "Bearer $getToken";

            Response response1 = await dio.post(
              ApiUrl.registerUrl,
              data: FormData.fromMap({

                "Name": event.name.trim(),
                "Email": event.email.trim(),
                "PhoneNumber": event.phonenumber.trim(),
                "Password": event.password.trim(),
              }),
            );

            log("statuscode" + response1.statusCode.toString());
            if (response1.statusCode == 200) {
              log("200");
              emit.call(RegisterSuccess());
              emit.call(RegisterInitial());
            }

          } on DioError catch (e) {

            if(e.response?.statusCode == 401){
              log("401");

              Fluttertoast.showToast(msg: "Unauthorized");
              emit.call(RegisterInitial());

            }
            else if(e.response!.statusCode==409){
              log("409");
              log('4');
              Fluttertoast.showToast(msg: "Email already registered");
              emit.call(RegisterInitial());

            }

            //exception Handling //401//400//409

          }
        }
        if (event is GoogleSignInEvent) {
          try {

            emit.call(RegisterLoading());

            UserCredential result = await MyGoogleSignInEvent.googleSignIn();

            DocumentSnapshot document = await FirebaseFirestore.instance
                .collection('Users')
                .doc(result.user!.uid)
                .get();

            FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
            UserModel userModel = UserModel(
              uid: result.user!.uid,
              email: result.user!.email,
              fullName: result.user!.displayName,
              password: "",

            );

            if (document.data() == null) {
              await firebaseFirestore
                  .collection("Users")
                  .doc(result.user!.uid)
                  .set(userModel.toMap());
              emit.call(RegisterSuccess());

            }
            MySharedPrefrences.setUserData(userModel: userModel);
            if(document.data()!=null){
              emit.call(RegisterSuccess());
            }
          } catch (e) {
            print(e.toString());
            emit.call(RegisterInitial());
            print('4');
          }
        }

       }

       catch (e) {
        print(e.toString());
        emit.call(RegisterInitial());
        Fluttertoast.showToast(msg: e.toString());

      }
    });
  }
}
