import 'package:sign_me_up/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;



  // Stream<User> get user {
  //   return _auth.authStateChanges()
  //     //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  //     .map(_userFromFirebaseUser);
  // }

  Future registerWithEmailAndPassword(String email, String password) async {
    final User? user = (
      await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;

  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}