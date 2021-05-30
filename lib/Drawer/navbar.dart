import 'package:flutter/material.dart';
import 'package:fyp/AuthScreens/screens/auth/auth.dart';
import 'package:fyp/Screens/DrawerScreens/UpdateJobApplications.dart';
import 'package:fyp/Screens/feedback.dart';
import 'package:fyp/Screens/jobapplication.dart';
import 'package:fyp/Screens/jobapplicationmanage.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key key}) : super(key: key);
  static const kPrimaryColor = Color(0xFF6F35A5);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [kPrimaryLightColor, kPrimaryColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: kPrimaryColor),
                accountName: Text("Ali Asghar"),
                accountEmail: Text('aaliasghar720@gmai.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/aaa.jpeg'),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile Setting",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
               ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateJobApplication()));
                    },
                    leading: Icon(
                      Icons.home_repair_service_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Job Application",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FeedBack()));
                    },
                    leading: Icon(
                      Icons.feedback,
                      size: 20,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Feedback",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      context.signOut(); 
                      Navigator.pushAndRemoveUntil(context, AuthScreen.route, (route) => false);
                    },
                    leading: Icon(
                      Icons.logout,
                      size: 20,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )

            ],
          ),
        ),
      ),
    );
  }
}
