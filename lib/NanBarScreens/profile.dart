import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Models/jobcard.dart';
import 'package:fyp/constans.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatelessWidget {
   Profile({Key key}) : super(key: key);
  String uuid= '';
  @override
  Widget build(BuildContext context) {
     final litUser = context.getSignedInUser();
litUser.when(
  (user) {
    print(user.uid);
    uuid = user.uid;
  },
  empty: () {},
  initializing: () {},
);
    return Container(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("recruters").doc(uuid).collection("Applications").snapshots(),

        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          print(snapshot.connectionState);
          if (snapshot.hasData && snapshot.data != null && snapshot.data.docs.isNotEmpty){
            return ListView(
              children: snapshot.data.docs.map((doc) {

                return JobCard(doc);
            
              } ).toList(),
            );
          }else{

            if(snapshot.connectionState == ConnectionState.waiting){
             return Center(child: CircularProgressIndicator(),);
            }
            else{


 return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_DuFU3e.json', height: 100),
                    SizedBox(height: 20),
                    Text("You havent posted any jobs yet!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),
              );
            }
            
          }
        },
      ),
    ));
  }
}
