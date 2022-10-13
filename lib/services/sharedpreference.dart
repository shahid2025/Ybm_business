import 'package:shared_preferences/shared_preferences.dart';
import 'package:ybm_business/model/user_model.dart';
import 'constants.dart';

class MySharedPrefrences {
  static setUserData({required UserModel userModel}) async {



    await SharedPreferences.getInstance().then((value) {
      // value.setInt(Constant.userIdKey, userModel.uid!);
      value.setString(Constant.userIdKey, userModel.uid!);
      value.setString(Constant.userFullNamekey, userModel.fullName!);
      value.setString(Constant.userEmailkey, userModel.email!);
      value.setString(Constant.userStatus, userModel.status!);
      value.setString(Constant.userPasswordkey, userModel.password!);
    });
  }

  static Future<UserModel> getUserData() async {
    late UserModel _userModel;
    await SharedPreferences.getInstance().then((value) {
      // null hendling
      value.getString(Constant.userIdKey) ??
          value.setString(Constant.userIdKey, "");


      value.getString(Constant.userFullNamekey) ??
          value.setString(Constant.userFullNamekey, "");

      value.getString(Constant.userEmailkey) ??
          value.setString(Constant.userEmailkey, "");

      _userModel = UserModel(
        // uid: value.getInt(Constant.userIdKey),
        uid: value.getString(Constant.userIdKey),
        fullName: value.getString(Constant.userFullNamekey),
        email: value.getString(Constant.userEmailkey),
        password: value.getString(Constant.userPasswordkey),
      );
    });

    return _userModel;
  }

  static Future clearUserData() async {
    await SharedPreferences.getInstance().then((value) => value.clear());
  }
}
