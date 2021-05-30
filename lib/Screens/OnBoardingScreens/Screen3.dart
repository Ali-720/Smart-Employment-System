import 'package:flutter/material.dart';
import 'package:fyp/AuthScreens/screens/auth/auth.dart';
import 'package:fyp/constans.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key key}) : super(key: key);
  static final style = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/4.png',
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuthScreen()));
                },
                child: Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: Center(
                      child: Center(
                          child: Text(
                    "Start",
                    style: TextStyle(fontSize: 18),
                  ))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
