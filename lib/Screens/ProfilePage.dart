/*import 'package:flutter/material.dart';
import 'package:tma/widgets/constant.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});
  State<ProfilePage>createState()=>_ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
Widget build (BuildContext context){
  var he = MediaQuery.of(context).size.height;
  return Scaffold(
    backgroundColor: MyThemeColors.backgroundColor,
    body: SafeArea(child: Container(
      padding: EdgeInsets.only(left: he *0.03,right: he *0.03,top: he *0.03,bottom: he *0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
           height: 50,
          ),
          Text('First Name',style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    )
    ),
  );
}
}*/

import 'package:flutter/material.dart';
import 'package:tma/widgets/constant.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});
  State<ProfilePage>createState()=>_ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
Widget build (BuildContext context){
  var he = MediaQuery.of(context).size.height;
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 189, 245, 247),
    body: SafeArea(
      child: Container(
      padding: EdgeInsets.only(left: he *0.03,right: he *0.03,top: he *0.03,bottom: he *0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(
           height: 10,
          ),
          Text('First Name',style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
                      SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                hintText: 'Keya',
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
              )),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Last Name',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                hintText: 'Mondal',
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColors.textColor)),
              )),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Username',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.20,
                child: TextFormField(
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: 'keya09',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: Text('Change Username', style: TextStyle(color:Colors.blueAccent),))
              ,Icon(Icons.edit, color: Colors.blueAccent,size: 18,)
            ],),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.20,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: '+880 1745892464',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: Text('Change Number', style: TextStyle(color:Colors.blueAccent),)),
              Icon(Icons.edit, color: Colors.blueAccent,size: 18,)
            ],),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Email Address',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.24,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: 'keyamondal549@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColors.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: Text('Change Email ID', style: TextStyle(color:Colors.blueAccent),)),
              Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,size: 18,)
            ],),

            SizedBox(
              height: he * 0.02,
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Add Account',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                  size: 21,
                )
              ],
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Switch Account',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                  size: 21,
                )
              ],
            ),
            SizedBox(
              height: he * 0.021,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
        ],
      ),
    )
    ),
  );
}
}