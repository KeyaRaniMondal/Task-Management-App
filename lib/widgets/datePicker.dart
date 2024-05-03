import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget{
  const DatePicker({super.key});

  State<DatePicker>createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker>{
final weekDays=['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
final day=['11','12','13','14','15','16','17'];
var selectedDay=0;
  @override
Widget build(BuildContext context){
  return Container(
    height: 100,
    padding: const EdgeInsets.symmetric(horizontal:20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    child: ListView.separated(itemBuilder: (context,index)=>GestureDetector(
      onTap: () {
        setState(() {
          selectedDay=index;
        });
      },
    ), separatorBuilder: (_, Index)=>const SizedBox(
      width: 10,
    ), itemCount: weekDays.length),
  );
}
}