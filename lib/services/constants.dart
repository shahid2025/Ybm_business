class Constant{

  static String userIdKey = "userIdKey";
  static const userFullNamekey = "userFullNamekey";
  static const userEmailkey = "userEmailkey";
  static const userStatus = "userStatuskey";
  static const userPasswordkey = "userPasswordkey";

  static emailValidator (String? v) {
    bool _emailValid = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(v!);

    if (v.isEmpty) {
      return 'Please enter your email';
    } else if (!_emailValid) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  static passwordValidator (String? v) {
    bool _isPassword= RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$").hasMatch(v!);
    if (v.isEmpty) {
      return 'Please enter the password like (A-123-@)';
    } else if (v.length < 6 || v.length > 25) {
      return 'Password length should be in between 6 and 25';
    }
    else
    if(!_isPassword){
      return 'Please enter a valid password like (A-123-@) ';
      // return Constants.passwordValidator(v);}
    }}


}