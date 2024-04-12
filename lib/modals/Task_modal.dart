import 'package:flutter/material.dart';
import 'package:tma/widgets/constant.dart';

class Task{
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool isLast;

    Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
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
            done: 3,
            isLast: true,
          ),
                    Task(
            icon: Icons.work,
            title:'Work',
            bgcolor:kYellwLight,
            iconcolor: kYellwDark,
            btncolor: kYellow,
            left: 1,
            done: 4,
            isLast: true,
          ),
                    Task(
            icon: Icons.favorite_rounded,
            title:'Health',
            bgcolor:kRedLight,
            iconcolor:kRedDark ,
            btncolor:kRed ,
            left: 2,
            done: 6,
            isLast: true,
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