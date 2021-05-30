import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);
  static final style = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurpleAccent,
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
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/3.png',
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Column(
            children: <Widget>[
              Text(
                "Without help",
                style: style,
              ),
              Text(
                "it will be easier",
                style: style,
              ),
              Text(
                "to achieve your goals.",
                style: style,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
