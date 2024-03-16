
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';//imports widgets & tools design framework
import 'package:flutter/services.dart';
import 'package:tma/Screens/HomePage.dart';
import 'package:tma/Screens/ProfilePage.dart';
import 'package:tma/Screens/login_page.dart';
import 'package:tma/Screens/SignUpPage.dart';
import 'package:tma/Screens/splashScreen.dart';

//void main() => runApp(MyApp()); //starts execution,run app is a function and MyApp is a class passed as an instance
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb)
  {
     await Firebase.initializeApp(options: FirebaseOptions(apiKey:  "AIzaSyAw1oXsBhT7UU2gtBlhNE4wKpFTk5DtSdo", appId:  "1:263592211845:web:593cbaa91d40fdd03e00ec", messagingSenderId: "263592211845", projectId: "tma-backend"));
  }
  else{
  await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //myapp class ar constructor,namesd constructor sk

  @override
  Widget build(BuildContext context) { //build method,returns UI elements of the app
    SystemChrome.setSystemUIOverlayStyle(   //helps to get transparent view
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(0, 21, 168, 46),
        statusBarBrightness: Brightness.dark
      )
    );
    return MaterialApp( //creates instance or object of material app,container of design visual structure
      debugShowCheckedModeBanner: false, //disables debug banner means cross mark
      title: 'Task Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home:SplashScreen(child: MyHomePage(),),
      home:SplashScreen(child: LoginPage(),),
      //home: MyHomePage(),
    );
  }
}

