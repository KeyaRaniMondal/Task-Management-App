import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tma/Screens/HomePage.dart';
import 'package:tma/Screens/SignUpPage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late GoogleSignIn _googleSignIn;

  @override
  void initState() {
    super.initState();
    _googleSignIn = GoogleSignIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 126, 126, 192),
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _signIn,
                child: Text("Login"),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: _handleGoogleSignIn,
                icon: Image.asset(
                  'assets/google_logo.png', 
                  height: 24, 
                ),
                label: Text(
                  'Sign In with Google',
                  //  google_fonts: ^2.1.0
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, 
                  onPrimary: Colors.black, 
                  minimumSize: Size(200, 48), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24), 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

void _signIn() async {
  String email = _emailController.text;
  String password = _passwordController.text;

  // Replace this logic with your sign-in mechanism
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    User? user = userCredential.user;

    if (user != null) {
      print("User is successfully signed in");

      // Navigate to HomePage after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      print("Some error happened");
      // Handle sign-in failure, you can show an error message
    }
  } catch (e) {
    print("Error during sign-in: $e");

    // Handle sign-in failure, you can show an error message
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Authentication Failed'),
          content: Text('Invalid email or password.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        );
      },
    );
  }
}
  
Future<bool> isUserNewInYourDatabase(String email) async {
  // Check if the user already exists in your app's database
  // For example, if you're using Firebase Authentication, you can check if the user exists in Firebase Authentication

  // Get the instance of FirebaseAuth
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    UserCredential? userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: 'dummy_password', 
    );
    
    await userCredential?.user?.delete();


    return true;
  } catch (e) {
    // If createUserWithEmailAndPassword fails, it means the user already exists
    // Return false indicating that the user is not new
    return false;
  }
}

  void _handleGoogleSignIn() async {
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      // Successful sign-in with Google
      // Check if the user is signing in for the first time
      final isUserNew = await isUserNewInYourDatabase(googleUser.email);
      if (isUserNew) {
        // User is signing up for the first time, proceed to create a new account
        // in your app's database using the Google-provided information
      }
      // Navigate to home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Handle sign-in failure
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Sign-in Failed'),
            content: Text('Failed to sign in with Google.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  } catch (error) {
    print('Error signing in with Google: $error');
  }
}

} 


/*import 'package:flutter/material.dart';
import 'package:tma/Screens/HomePage.dart';
import 'package:tma/Screens/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 126, 126, 192),
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: _signIn,
                child: Text("Login"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Replace this logic with your authentication mechanism
    if (email == 'user@example.com' && password == 'password') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>MyHomePage()),
      );
    } else {
      // Handle authentication failure
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Authentication Failed'),
            content: Text('Invalid email or password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Don\'t have an account? Sign Up'),
              ),
            ],
          );
        },
      );
    }
  }
}*/



