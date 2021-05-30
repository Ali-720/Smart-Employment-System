import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp/constans.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class JobUpdate extends StatefulWidget {
  DocumentSnapshot doc;
  JobUpdate(this.doc);
  @override
  _JobUpdateState createState() => _JobUpdateState();
}

class _JobUpdateState extends State<JobUpdate> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController vaccancies = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  List<String> cat = [
    "IT",
    "Teaching",
    "Space and Technology",
    "Mechanical Engineering",
    "Electrical Engineering",
    "Civil Engineering",
    "Medical",
    "others"
  ];
  int _value = 1;
  String docId = '';
  String intrest = "IT";
  String uuid = '';

  @override
  void initState() {
    super.initState();
    print(widget.doc["ref"]);
    getAllData();
  }

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

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Update Post"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 45,
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 15.0),
                      ]),
                  child: TextField(
                    controller: title,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Job Title',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 150,
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 15.0),
                      ]),
                  child: TextField(
                    controller: description,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Job Description',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 45,
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 15.0),
                      ]),
                  child: TextField(
                    controller: vaccancies,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Number of Vaccancies',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, top: 10, right: 15, bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButton(
                      value: _value,
                      dropdownColor: Colors.white,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      underline: SizedBox(),
                      hint: Text('Select Job Category'),
                      items: [
                        DropdownMenuItem(child: Text(cat[0]), value: 1),
                        DropdownMenuItem(child: Text(cat[1]), value: 2),
                        DropdownMenuItem(child: Text(cat[2]), value: 3),
                        DropdownMenuItem(child: Text(cat[3]), value: 4),
                        DropdownMenuItem(child: Text(cat[4]), value: 5),
                        DropdownMenuItem(child: Text(cat[5]), value: 6),
                        DropdownMenuItem(child: Text(cat[6]), value: 7),
                        DropdownMenuItem(child: Text(cat[7]), value: 8),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                          intrest = cat[value - 1];
                        });
                      }),
                ),
              ),
              RoundedLoadingButton(
                color: kPrimaryLightColor,
                controller: _btnController,
                successColor: Colors.black,
                onPressed: () async {
                  if (title.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Title is Empty");
                  } else if (description.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Description is Empty");
                  } else if (vaccancies.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Vaccancies is Empty");
                  }

                  postAJob();
                },
                child: Container(
                  width: 100,
                  child: Center(child: Text("Submit")),
                ),
              ),
              Container(
                height: 90,
              )
            ],
          ),
        ),
      ),
    );
  }

  void postAJob() async {
    await FirebaseFirestore.instance.collection(intrest).doc(docId).update({
      "Title": title.text,
      "Desc": description.text,
      "Vacc": vaccancies.text,
      "category": intrest
    }).onError((error, stackTrace) {
      Fluttertoast.showToast(msg: error.message);
      _btnController.error();
      Timer(Duration(seconds: 2), () {
        _btnController.reset();
      });
    }).whenComplete(() {
      saveJobReference();
      Timer(Duration(seconds: 2), () {
        _btnController.reset();
      });
    });
  }

  void clearFields() {
    title.clear();
    description.clear();
    vaccancies.clear();
  }

  void saveJobReference() async {
    FirebaseFirestore.instance
        .collection("recruters")
        .doc(uuid)
        .collection("Applications")
        .doc(docId)
        .update({
      'ref': docId,
      "Title": title.text,
      "Desc": description.text,
      "Vacc": vaccancies.text,
      "category": intrest
    });
    _btnController.success();

    Fluttertoast.showToast(msg: "Job has been Updated Successfully");
    clearFields();
  }

  void getAllData() {
    try {
      print(cat.indexOf(widget.doc["category"]));
      title..text = widget.doc["Title"];
      description..text = widget.doc["Desc"];
      vaccancies..text = widget.doc["Vacc"];

      _value = cat.indexOf(widget.doc["category"]);
      intrest = cat[_value];
      docId = widget.doc["ref"];
    } catch (error) {
      print(error);
    }
  }
}
