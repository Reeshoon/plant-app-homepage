import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthHelper {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static signInWithEmail ({String email, String password}) async{
    final res = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = res.user;
    return user;
  }



  static logOut(){
    GoogleSignIn().signOut();
    return _auth.signOut();
  }




}
