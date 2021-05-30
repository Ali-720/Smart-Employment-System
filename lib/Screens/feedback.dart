import 'package:flutter/material.dart';
import 'package:fyp/constans.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class FeedBack extends StatefulWidget {
  FeedBack({Key key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Ratings and reviews",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.info_outline),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                "4.7",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 14,
                              ),
                              Icon(
                                Icons.star_border,
                                size: 14,
                              ),
                            ],
                          ),
                          Text("661548")
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('5'),
                              Container(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: FAProgressBar(
                                  animatedDuration: Duration(milliseconds: 900),
                                  size: 8,
                                  backgroundColor: Colors.grey[200],
                                  currentValue: 90,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('4'),
                              Container(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: FAProgressBar(
                                  animatedDuration: Duration(milliseconds: 700),
                                  size: 8,
                                  backgroundColor: Colors.grey[200],
                                  currentValue: 70,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('3'),
                              Container(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: FAProgressBar(
                                  animatedDuration: Duration(milliseconds: 200),
                                  size: 8,
                                  backgroundColor: Colors.grey[200],
                                  currentValue: 30,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('2'),
                              Container(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: FAProgressBar(
                                  animatedDuration: Duration(milliseconds: 100),
                                  size: 8,
                                  backgroundColor: Colors.grey[200],
                                  currentValue: 10,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('1'),
                              Container(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: FAProgressBar(
                                  animatedDuration: Duration(milliseconds: 600),
                                  size: 8,
                                  backgroundColor: Colors.grey[200],
                                  currentValue: 60,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 180,
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                        color: kPrimaryLightColor,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Ali Asghar",
                            style: TextStyle(fontSize: 16),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/aaa.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08, left: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(Icons.star_border),
                              Container(
                                width: 15,
                              ),
                              Text("20/05/2021"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              "Very cooperative faculty. Organization overall take care of the staff. Encourages the good work of the Employees."),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 180,
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                        color: kPrimaryLightColor,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Ali Asghar",
                            style: TextStyle(fontSize: 16),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/aaa.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08, left: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(Icons.star_border),
                              Container(
                                width: 15,
                              ),
                              Text("20/05/2021"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              "Very cooperative faculty. Organization overall take care of the staff. Encourages the good work of the Employees."),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 180,
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                        color: kPrimaryLightColor,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Ali Asghar",
                            style: TextStyle(fontSize: 16),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/aaa.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08, left: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(Icons.star_border),
                              Container(
                                width: 15,
                              ),
                              Text("20/05/2021"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              "Very cooperative faculty. Organization overall take care of the staff. Encourages the good work of the Employees."),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 180,
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                        color: kPrimaryLightColor,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Ali Asghar",
                            style: TextStyle(fontSize: 16),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/aaa.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08, left: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(Icons.star_border),
                              Container(
                                width: 15,
                              ),
                              Text("20/05/2021"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              "Very cooperative faculty. Organization overall take care of the staff. Encourages the good work of the Employees."),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 180,
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                        color: kPrimaryLightColor,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Ali Asghar",
                            style: TextStyle(fontSize: 16),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/aaa.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08, left: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(Icons.star_border),
                              Container(
                                width: 15,
                              ),
                              Text("20/05/2021"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              "Very cooperative faculty. Organization overall take care of the staff. Encourages the good work of the Employees."),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
