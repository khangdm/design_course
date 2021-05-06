import 'package:flutter/material.dart';

import 'HeaderCourse.dart';

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
          padding: EdgeInsets.only(left: 10, top: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerCourse(),
              searchCourse(),
              categoryCourse(),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchCourse() {
    return Container(
      width: 250,
      alignment: Alignment.topLeft,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[100],
          labelText: "Search for course",
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}

Widget categoryCourse() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      headerTextCommon("Catefory"),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          textButtonCommon("Ui/Ux", true, () => {}),
          textButtonCommon("Ui/Ux", false, () => {}),
          textButtonCommon("Ui/Ux", false, () => {}),
        ],
      ),
      horizontalList(),
    ],
  );
}

textButtonCommon(String s, bool enable, [Map Function() pressed]) {
  return SizedBox(
    width: 100,
    child: ElevatedButton(
        onPressed: pressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue))),
          backgroundColor:
          MaterialStateProperty.all(enable ? Colors.blue : Colors.white),
        ),
        child: Text(
          s,
          style: TextStyle(color: enable ? Colors.white : Colors.blue),
        )),
  );
}

headerTextCommon(String s) {
  return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Text(
        s,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ));
}

void onpressed() {}


horizontalList() {
  Widget horizontalListCourse = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 160.0, color: Colors.red,),
          Container(width: 160.0, color: Colors.orange,),
          Container(width: 160.0, color: Colors.pink,),
          Container(width: 160.0, color: Colors.yellow,),
        ],
      )
  );
  return horizontalListCourse;
}