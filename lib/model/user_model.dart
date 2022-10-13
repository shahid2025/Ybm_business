class UserModel {
  // final int? uid;
  final String? uid;
  final String? fullName;
  final String? email;
  final String? status;
  final String? password;


  UserModel(  {

    required this.fullName,
   required this.uid,
   required this.email,
    this.status,
    required this.password});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      fullName: map['fullName'],
      password: map['password'],
      email: map['email'],
      status: map['status']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName':fullName,
      'email': email,
      'password':password,

    };
  }



}
