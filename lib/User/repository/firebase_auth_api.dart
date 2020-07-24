import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _signIn = GoogleSignIn();

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount = await _signIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    AuthResult authresult = await _auth.signInWithCredential(
      GoogleAuthProvider.getCredential(
          idToken: gSA.idToken, accessToken: gSA.accessToken),
    );
    FirebaseUser user = authresult.user;
    return user;
  }

  signOut() async {
    await _auth.signOut().then(
          (value) => print("Session finish"),
        );
    _signIn.signOut();
    ;
    print("Session's finished");
  }
}
