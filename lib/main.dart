import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenCourse(),
    );
  }
}

class MainScreenCourse extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainScreenCourseState();
}

class MainScreenCourseState extends State<MainScreenCourse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "this is title \n"),
                        TextSpan(text: "this is title \n",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24))
                      ],
                      style: TextStyle(color: Colors.grey, fontSize: 18))),
              Image.asset('assets/images/userImage.png', width: 50, height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
