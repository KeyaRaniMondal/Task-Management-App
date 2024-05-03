import 'package:flutter/material.dart';
import 'package:tma/widgets/constant.dart';

class Task{
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String,dynamic>>?desc;
  num? done;
  bool isLast;
  

    Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.desc,
      this.done,
      this.isLast = true});
      static List<Task> generateTasks(){
        return[
          Task(
            icon: Icons.person_rounded,
            title:'personal',
            bgcolor:kBlue,
            iconcolor: kBlueDark,
            btncolor: kBlue,
            left: 5,
            desc:[
              {
              'time':'9:00 AM',
              'title':'Task 1',
              'slot':'9:00 AM - 10:00 AM',
              'tlColor':kRedDark,
              'bgColor':kRedLight,
            },
                          {
              'time':'10:00 AM',
              'title':'Task 2',
              'slot':'10:00 AM - 11:00 AM',
              'tlColor':kRedDark,
              'bgColor':kRedLight,
            },
                          {
              'time':'11:00 AM',
              'title':'Task 1',
              'slot':'11:00 AM - 12:00 AM',
              'tlColor':kRedDark,
              'bgColor':kRedLight,
            },
            ],
            done: 3,
            isLast: false,
          ),
                    Task(
            icon: Icons.work,
            title:'Work',
            bgcolor:kYellwLight,
            iconcolor: kYellwDark,
            btncolor: kYellow,
            left: 1,
            done: 4,
            isLast: false,
          ),
                    Task(
            icon: Icons.favorite_rounded,
            title:'Health',
            bgcolor:kRedLight,
            iconcolor:kRedDark ,
            btncolor:kRed ,
            left: 2,
            done: 6,
            isLast: false,
          ),
                    Task(
            icon: Icons.person_rounded,
            title:'personal',
            bgcolor:kBlue,
            iconcolor: kBlueDark,
            btncolor: kBlue,
            left: 5,
            done: 3,
            isLast: true,
          ),
        ];
      }
}