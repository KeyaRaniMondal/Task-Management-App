

// /*import 'package:firebase_auth/firebase_auth.dart';

// class FirebaseAuthService{
//   FirebaseAuth _auth=FirebaseAuth.instance;
//   Future<User?>signUpWithEmailAndPassword(String email,String password) async{

//     try{
//       UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     }
//     catch(e){
//       print("Some error occured");
//     }
//     return null;
//   }


//    Future<User?>signInWithEmailAndPassword(String email,String password) async{

//     try{
//       UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     }
//     catch(e){
//       print("Some error occured");
//     }
//     return null;
//   }
// }*/

// import 'package:firebase_auth/firebase_auth.dart';

// class FirebaseAuthService {

//   FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<User?> signUpWithEmailAndPassword(String email, String password) async {

//     try {
//       UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     } catch (e) {
//       print("Some error occured");
//     }
//     return null;

//   }

//   Future<User?> signInWithEmailAndPassword(String email, String password) async {

//     try {
//       UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     } catch (e) {
//       print("Some error occured");
//     }
//     return null;

//   }




// }



import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthUtil {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Method to sign up a user with email and password
  Future<User?> signUpWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Error signing up: $e");
      return null;
    }
  }

  // Method to sign in a user with email and password
  Future<User?> signInWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Error signing in: $e");
      return null;
    }
  }

  // Method to sign out the current user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
