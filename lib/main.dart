import 'package:flutter/material.dart';//imports widgets & tools design framework
import 'package:flutter/services.dart';
import 'package:tma/Screens/HomePage.dart';

void main() => runApp(MyApp()); //starts execution,run app is a function and MyApp is a class passed as an instance

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
      home: MyHomePage(),
    );
  }
}