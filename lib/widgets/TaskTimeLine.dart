import'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget{

  final Map<String,dynamic>detail;
    TaskTimeLine(this.detail);
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
      padding:EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          _buildTimeLine(detail['tlColor'])
        ],
      ),
    );
  }
  Widget _buildTimeLine(Color color){
    return Container(
      width: 20,
      height: 115,
      child: TimelineTile(alignment: TimelineAlign.manual,
      lineXY: 0,
      indicatorStyle: IndicatorStyle(indicatorXY: 0,
      width: 20,
      indicator: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: color,
            width: 5,
          ),
          shape: BoxShape.circle,
        ),
      )
      ),
      afterLineStyle: LineStyle(color:color,
      thickness: 2 ),
      isFirst:true),
    );
  }
}