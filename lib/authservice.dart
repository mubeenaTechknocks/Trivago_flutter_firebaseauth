import "package:firebase_auth/firebase_auth.dart";
import 'package:trivago/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Usercustom _userfromfirebase(User user) {
    return user != null ? Usercustom(uid: user.uid) : null;
  }

  Stream<Usercustom> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userfromfirebase(user));
        .map(_userfromfirebase);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
