import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:fyp/Drawer/navbar.dart';
import 'package:fyp/NanBarScreens/addpost.dart';
import 'package:fyp/NanBarScreens/profile.dart';
import 'package:fyp/NanBarScreens/search.dart';
import 'package:fyp/constans.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const kPrimaryColor = Color(0xFF6F35A5);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);

  int selectedindex = 1;
  final screen = [Searchh(),AddPost(),Profile()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        drawer: Navbar(),
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Colors.purple[400],
            ),
            preferredSize: Size.fromHeight(40)),
        
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          animationDuration: Duration(milliseconds: 350),
          index: selectedindex,
          //animationCurve: Curves.bounceInOut,

          color: Colors.white,
          backgroundColor: kPrimaryColor,
          buttonBackgroundColor: Colors.white,
          items: <Widget>[
            Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.post_add,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.data_usage_rounded,
              size: 30,
              color: Colors.black,
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
        ),
        body: screen[selectedindex],
      ),
    );
  }
}

// class Draw extends StatefulWidget {
//   Draw({Key key}) : super(key: key);

//   @override
//   _DrawState createState() => _DrawState();
// }

// class _DrawState extends State<Draw> {
//   double value = 0;
//   static const kPrimaryColor = Color(0xFF6F35A5);
//   static const kPrimaryLightColor = Color(0xFFF1E6FF);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//             colors: [ kPrimaryLightColor,kPrimaryColor],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           )),
//         ),
//         SafeArea(
//             child: Container(
//           width: 200.0,
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               DrawerHeader(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 50.0,
//                       backgroundImage:
//                           NetworkImage("https://picsum.photos/250?image=9"),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "Extreme Commerce",
//                       style: TextStyle(color: Colors.white, fontSize: 15.0),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                   child: ListView(
//                 children: [
//                   ListTile(
//                     onTap: () {},
//                     leading: Icon(
//                       Icons.person,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       "Profile Setting",
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   )
//                 ],
//               )),
//               Expanded(
//                   child: ListView(
//                 children: [
//                   ListTile(
//                     onTap: () {},
//                     leading: Icon(
//                       Icons.home_repair_service_rounded,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       "Job Application",
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   )
//                 ],
//               )),
//               Expanded(
//                   child: ListView(
//                 children: [
//                   ListTile(
//                     onTap: () {},
//                     leading: Icon(
//                       Icons.feedback,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       "Feedback",
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   )
//                 ],
//               )),
//               Expanded(
//                   child: ListView(
//                 children: [
//                   ListTile(
//                     onTap: () {},
//                     leading: Icon(
//                       Icons.logout,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       "Logout",
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   )
//                 ],
//               )),
//               Expanded(
//                 flex: 5,
//                 child: Container(),
//               )
//             ],
//           ),
//         )),
//         TweenAnimationBuilder(
//             tween: Tween<double>(begin: 0, end: value),
//             duration: Duration(milliseconds: 500),
//             builder: (_, double val, __) {
//               return (Transform(
//                 alignment: Alignment.center,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, 0.001)
//                   ..setEntry(0, 3, 200 * val)
//                   ..rotateY((pi / 6) * val),
//                 child: SafeArea(
//                   child: Scaffold(
//                     appBar: PreferredSize(
//                         child: AppBar(
//                           backgroundColor: kPrimaryColor,
//                           leading: Icon(Icons.menu),

//                         ),
//                         preferredSize: Size.fromHeight(40)),
//                     body: Container(color: kPrimaryLightColor,),
//                     bottomNavigationBar: CurvedNavigationBar(

//                       onTap: (index){},

//                       color: Colors.white,

//                       backgroundColor: kPrimaryLightColor,
//                       buttonBackgroundColor: Colors.purple[50],
//                       items: <Widget>[
//                       Icon(Icons.search,size: 30,color: Colors.black,),
//                       Icon(Icons.post_add,size: 30,color: Colors.black,),
//                       Icon(Icons.person,size: 30,color: Colors.black,),
//                     ]),
//                   ),
//                 ),
//               ));
//             }),
//         GestureDetector(onHorizontalDragUpdate: (e) {
//           if (e.delta.dx > 0) {
//             setState(() {
//               value = 1;
//             });
//           } else {
//             setState(() {
//               value = 0;
//             });
//           }
//         }

//             // onTap: () {
//             //   setState(() {
//             //     value == 0 ? value = 1 : value = 0;
//             //   });
//             // },
//             )
//       ],
//     ));
//   }
// }
