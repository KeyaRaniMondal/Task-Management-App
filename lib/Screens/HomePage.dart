import 'package:flutter/material.dart';
import 'package:tma/widgets/constant.dart';
import '../widgets/premium.dart';
import 'ProfilePage.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  List<Widget> _pages=[
    //LoginPage(),
    //SignUpPage(),
    HomePage(),
    ProfilePage(),
  ];
  int activeIndex=0;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
            color:Colors.grey.withOpacity(0.2),
            blurRadius:10,
            spreadRadius: 5,
            ),
          ],
        ),
        child:  ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: kwhite,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items:const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,size: 30),
              label:'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,size: 30),
                label: 'person',
              ),
            ],
            onTap:(index){
              setState(() {
                activeIndex=index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: kBlueDark,
      child: Icon(Icons.add,color: kdark,size: 25,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
   // return const Placeholder();
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('assets/pic1.jpg'),//profile
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Hello, KEYA',
          style: TextStyle(color: kdark, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {},
      ),
    ],
  );
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0,left: 8.0,top: 15.0),
          child: GoPremium(),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Tasks',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 22,
                fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Container())
      ],
    );
  }
}