import 'package:flutter/material.dart';
import 'package:tma/Screens/HomePage.dart';
import 'package:tma/Screens/ProfilePage.dart';
import 'package:tma/widgets/constant.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;

  const SplashScreen({Key? key, this.child}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor:kwhite,
      body: Center(
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/pic1.jpg'), // screenimage
            ),
            SizedBox(width: 10), // Adjust the spacing as needed
            Text(
              "Task Management App",
              style: TextStyle(
                color: Color.fromARGB(255, 226, 78, 20),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        if (widget.child != null) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => widget.child!),
            // MaterialPageRoute(builder: (context) => HomePage(child: ProfilePage())),
            (route) => false,
          );
        }
      },
    );
  }
}


