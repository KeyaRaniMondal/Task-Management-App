// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:tma/widgets/constant.dart';

// class DatePicker extends StatefulWidget{
//   const DatePicker({super.key});

//   State<DatePicker>createState() => _DatePickerState();
// }

// class _DatePickerState extends State<DatePicker>{
// final weekDays=['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
// final day=['11','12','13','14','15','16','17'];
// var selectedDay=0;
//   @override
// Widget build(BuildContext context){
//   return Container(
//     height: 100,
//     padding: const EdgeInsets.symmetric(horizontal:20),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(30),
//         topRight: Radius.circular(30),
//       ),
//     ),
//     child: ListView.separated(itemBuilder: (context,index)=>GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedDay=index;
//         });
//       },
//       child:Container(
//         padding: const EdgeInsets.only(
//           right: 10,left: 10,bottom: 10,top: 25),
//           margin:const EdgeInsets.symmetric(horizontal: 0.5),
//           decoration: BoxDecoration(
//             color: selectedDay == index? Colors.grey.withOpacity(0.3):null,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             children: [
//               Text(weekDays[index],style: const TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold
//               ),),
//               const SizedBox(height: 5,),
//               Text(day[index],style: const TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500
//               ),),
//             ],
//           ),
//       ),
//     ), 
//     separatorBuilder: (_, Index)=>const SizedBox(
//       width: 10,
//     ), itemCount: weekDays.length),
//   );
// }
// }

import 'package:flutter/material.dart';
 import 'package:tma/widgets/constant.dart';// Ensure correct import path for constants

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final day = ['11', '12', '13', '14', '15', '16', '17'];
  int selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white, // Set background color for the container
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal, // Ensure horizontal scrolling
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedDay = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: selectedDay == index ? Colors.grey.withOpacity(0.3) : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weekDays[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  day[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: weekDays.length,
      ),
    );
  }
}