import 'package:google_sign_in/google_sign_in.dart';

class SigninServices {
  signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? gAuthen = await gUser?.authentication;
  }
}
