import 'package:flutter/material.dart';
import 'package:fyp/constans.dart';

class Searchh extends StatelessWidget {
  const Searchh({Key key}) : super(key: key);
  static const kPrimaryColor = Color(0xFF6F35A5);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
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
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search,color: kPrimaryColor,),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
