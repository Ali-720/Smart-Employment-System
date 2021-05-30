import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp/Screens/jobapplicationmanage.dart';

class JobCard extends StatelessWidget {
  DocumentSnapshot doc;
  JobCard(this.doc);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 250,
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 10.0),
          ]),
      child: Column(
        children: [
          ListTile(
              title: Text(doc["Title"]),
              leading: Image.asset(
                "assets/award.png",
                height: 36,
              ),
              subtitle: Text('Title'),
              trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManageJobApplication()));
                  })),
          ListTile(
            title: Text('Description'),
            leading: Image.asset(
              "assets/product-description.png",
              height: 36,
            ),
            subtitle: Container(
              height: 70,
                          child: Text(
                doc["Desc"],
              ),
            ),
            isThreeLine: true,
          ),
          ListTile(
            title: Text('Vaccancies'),
            leading: Icon(
              Icons.people_alt_sharp,
              size: 36,
            ),
            subtitle: Text(doc["Vacc"]),
          ),
        ],
      ),
    );
  }
}
