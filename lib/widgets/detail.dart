import 'package:flutter/material.dart';
import 'package:tma/modals/Task_modal.dart';
import 'package:tma/widgets/TaskTimeLine.dart';
import 'package:tma/widgets/task_title.dart';
import 'datePicker.dart';

class DetailPage extends StatelessWidget {
  final Task task;

  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DatePicker(),
                  TaskTitle(),
                ],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                  child: Container(
                    color: Colors.white,
                    height: 200,
                    child: Center(
                      child: Text(
                        'No Tasks yet',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => TaskTimeLine(detailList[index]),
                    childCount: detailList.length,
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 40,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {},
          iconSize: 20,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title} Task',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${task.left} tasks left to do',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:tma/modals/Task_modal.dart';
// import 'package:tma/widgets/TaskTimeLine.dart';
// import 'package:tma/widgets/task_title.dart';
// import 'datePicker.dart';

// class DetailPage extends StatelessWidget{
//   final Task task;

//   DetailPage(this.task);

//   Widget build(BuildContext context)
//   {
//     final datailList=task.desc;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: CustomScrollView(
//         slivers: [
//           _buildAppBar(context),
//           SliverToBoxAdapter(
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [DatePicker(),TaskTitle()],
//               ),
//             ),
//           ),
//           detailList==null
//           ?SilverFillRemaining(
//             child:Container(
//               color: Colors.white,
//               height: 200,
//               child: Center(
//                 child: Text('No Tasks yet',style: TextStyle(fontSize: 20,color: Colors.grey.shade900)
//                 ),
//                 ),
//             ),
//           )
//           :SliverList(delagate:SliverChildBuilderDelegate((context,index)=>TaskTimeLine(detailList[index]),childCount: detailList.length),
//           )
//         ],
//       ),
//     );
//   }
//   Widget _buildAppBar(BuildContext context){
//     return SliverAppBar(
//       backgroundColor: Colors.black,
//       expandedHeight: 90,
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back_ios),
//         onPressed: () => Navigator.pop(context),
//         iconSize: 20,
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () {},
//           iconSize: 20,
//           ),
//       ],
//       flexibleSpace: FlexibleSpaceBar(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               '${task.title} Task',
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               'You have ${task.left} tasks left to do',
//               style: const TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//       // pinned: true,
//       // flexibleSpace: FlexibleSpaceBar(
//       //   background: Stack(children: [
//       //     Container(
//       //       decoration: BoxDecoration(
//       //         image: DecorationImage(
//       //           image:AssetImage(task.image) ,
//       //           fit: BoxFit.cover,
//       //           ),
//       //           ),
//       //     ),
//       //     Container(
//       //       decoration: BoxDecoration(
//       //         gradient: LinearGradient(
//       //           begin: Alignment.topCenter,
//       //           end: Alignment.bottomCenter,
//       //           colors: [
//       //             Colors.black
//       //           ]
//       //         )
//       //       ),
//       //     )
//       //   ]),
//       // ),
//     );
//   }
// }