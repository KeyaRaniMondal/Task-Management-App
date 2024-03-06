
/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tma/Screens/login_page.dart';
import 'package:tma/user_auth/firebase_auth_services.dart';
import 'package:tma/widgets/from_container_widget.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              FormContainerWidget(
controller: _usernameController,
                hintText: "Username",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(

controller: _emailController,
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
controller: _passwordController,

                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: _signUp,
                child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5,),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context, MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
                      },
                      child: Text("Login", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user!= null){
      print("User is successfully created");
      Navigator.pushNamed(context, "/home");
    } else{
      print("Some error happend");
    }

  }

}*/
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _signUp,
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() {
    // Simple sign-up logic, you can replace it with your own logic
    String email = _emailController.text;
    String password = _passwordController.text;

    // Replace this logic with your sign-up mechanism
    if (email.isNotEmpty && password.isNotEmpty) {
      // Successful sign-up
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Sign Up Successful'),
            content: Text('You have successfully signed up.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context); // Pop SignUpPage and navigate back to LoginPage
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Handle sign-up failure
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Sign Up Failed'),
            content: Text('Please provide valid email and password.'),
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
  }
}

