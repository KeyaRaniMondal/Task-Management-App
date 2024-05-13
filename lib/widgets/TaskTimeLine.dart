// import'package:flutter/material.dart';
// import 'package:timeline_tile/timeline_tile.dart';

// class TaskTimeLine extends StatelessWidget{

//   final Map<String,dynamic>detail;
//     TaskTimeLine(this.detail);
//   Widget build(BuildContext context)
//   {
//     return Container(
//       color: Colors.white,
//       padding:EdgeInsets.symmetric(
//         horizontal: 15,
//       ),
//       child: Row(
//         children: [
//           _buildTimeLine(detail['tlColor']),
//           Expanded(child:
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 detail['time'],
//                 style: TextStyle(color: Colors.grey,fontSize: 15),
//               ),
//               detail['title'].isNotEmpty
//               ?_buildCard(
//                 detail['bgColor'],detail['title'],detail['slot'])
//                 :_buildCard(Colors.white,'','')
//             ]
//           ))
//         ],
//       ),
//     );
//   }

//   Widget _buildCard(Color bgColor,String title,String slot){
//     return Container(
// width: 250,
// height: 100,
// decoration: BoxDecoration(
//   color: bgColor,
//   borderRadius: BorderRadius.only(
//     topLeft: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//     bottomRight: Radius.circular(10),
//   ),
// ),
//     );
//   }
//   Widget _buildTimeLine(Color color){
//     return Container(
//       width: 20,
//       height: 40,
//       child: TimelineTile(alignment: TimelineAlign.manual,
//       lineXY: 0,
//       indicatorStyle: IndicatorStyle(indicatorXY: 0,
//       width: 20,
//       indicator: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(
//             color: color,
//             width: 5,
//           ),
//           shape: BoxShape.circle,
//         ),
//       )
//       ),
//       afterLineStyle: LineStyle(color:color,
//       thickness: 2 ),
//       isFirst:true),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:tma/modals/Task_modal.dart';
// import 'package:tma/widgets/datePicker.dart';

// class DetailPage extends StatelessWidget {
//   final Task task;

//   DetailPage(this.task);

//   @override
//   Widget build(BuildContext context) {
//     final detailList = task.desc;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: CustomScrollView(
//         slivers: [
//           _buildAppBar(context),
//           SliverToBoxAdapter(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   DatePicker(),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: detailList?.length,
//                       itemBuilder: (context, index) {
//                         return TaskTimeLine(detailList != null?[index] : null);
//                       },
//                     ),
//                   ),
//                   SizedBox(height: 20), // Add padding if needed
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildAppBar(BuildContext context) {
//     return SliverAppBar(
//       backgroundColor: Colors.black,
//       expandedHeight: 90,
//       leading: IconButton(
//         icon: Icon(Icons.arrow_back_ios),
//         onPressed: () => Navigator.pop(context),
//         iconSize: 20,
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {},
//           iconSize: 20,
//         ),
//       ],
//       flexibleSpace: FlexibleSpaceBar(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               '${task.title} Task',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 5),
//             Text(
//               'You have ${task.left} tasks left to do',
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic> detail;

  TaskTimeLine(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimeLine(detail['tlColor']),
          SizedBox(width: 16), // Add spacing between timeline and content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail['time'],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 8), // Add spacing between time and card
                detail['title'].isNotEmpty
                    ? _buildCard(
                        detail['bgColor'], detail['title'], detail['slot'])
                    : SizedBox.shrink(), // Use SizedBox to handle empty case
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: double.infinity, // Use full width of the available space
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            slot,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return Container(
      width: 20,
      height: 40,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        indicatorStyle: IndicatorStyle(
          width: 20,
          indicator: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: color,
                width: 3,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        beforeLineStyle: LineStyle(
          color: color,
          thickness: 2,
        ),
        isFirst: true,
      ),
    );
  }
}