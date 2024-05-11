import 'package:flutter/material.dart';
import 'package:tma/modals/Task_modal.dart';
import 'package:tma/widgets/TaskTimeLine.dart';
import 'package:tma/widgets/task_title.dart';
import 'datePicker.dart';

class detailPage extends StatelessWidget{
  final Task task;
  DetailPage(this.task);

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
