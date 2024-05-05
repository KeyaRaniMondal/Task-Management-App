


// import 'package:firebase_auth/firebase_auth.dart';

// class FirebaseAuthUtil {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Method to sign up a user with email and password
//   Future<User?> signUpWithEmailPassword(String email, String password) async {
//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print("Error signing up: $e");
//       return null;
//     }
//   }

//   // Method to sign in a user with email and password
//   Future<User?> signInWithEmailPassword(String email, String password) async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print("Error signing in: $e");
//       return null;
//     }
//   }

//   // Method to sign out the current user
//   Future<void> signOut() async {
//     await _auth.signOut();
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:tma/widgets/global/toast.dart';




class FirebaseAuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {

      if (e.code == 'email-already-in-use') {
        showToast(message: 'The email address is already in use.');
      } else {
        showToast(message: 'An error occurred: ${e.code}');
      }
    }
    return null;

  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: 'Invalid email or password.');
      } else {
        showToast(message: 'An error occurred: ${e.code}');
      }

    }
    return null;

  }




}