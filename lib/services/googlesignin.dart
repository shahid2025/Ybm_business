
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyGoogleSignInEvent {
  static Future googleSignIn() async {
    try{
      await GoogleSignIn().signOut();
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      // Google Sign In
      UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(credential);
      // authResult.user!.linkWithCredential(credential);
      return authResult;
    } on FirebaseAuthException catch (e) {
      // Catching Error
      if (e.code == 'account-exists-with-different-credential') {

      } else if (e.code == 'invalid-credential') {

      } else if (e.code == 'operation-not-allowed') {

      } else if (e.code == 'user-disabled') {

      }
    }
  }
}