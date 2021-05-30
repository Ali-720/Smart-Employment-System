

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Models/jobcard.dart';

import '../constans.dart';

class JobApplication extends StatelessWidget {
  const JobApplication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: StreamBuilder(
        stream: Firestore.instance.collection("recruters").document("ALI").collection("Applications").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData){
            return ListView(
              children: snapshot.data.documents.map((doc) {

                return JobCard(doc);
            
              } ).toList(),
            );
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
      )),
    );
  }
}