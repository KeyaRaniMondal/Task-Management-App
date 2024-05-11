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
          _buildTimeLine(detail['tlColor']),
          Expanded(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail['time'],
                style: TextStyle(color: Colors.grey,fontSize: 15),
              ),
              detail['title'].isNotEmpty
              ?_buildCard(
                detail['bgColor'],detail['title'],detail['slot'])
                :_buildCard(Colors.white,'','')
            ]
          ))
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor,String title,String slot){
    return Container(
width: 250,
height: 100,
decoration: BoxDecoration(
  color: bgColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
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