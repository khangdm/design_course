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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerCourse(),
                searchCourse(),
                categoryCourse(),
                headerTextCommon("Popular Course"),
                popularCourse(context),
              ],
            ),
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

horizontalList() {
  Widget horizontalListCourse = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          itemCategoryCourse(),
          SizedBox(
            width: 20,
          ),
          itemCategoryCourse(),
          SizedBox(
            width: 20,
          ),
          itemCategoryCourse(),
          SizedBox(
            width: 20,
          ),
          itemCategoryCourse(),
        ],
      ));
  return horizontalListCourse;
}

popularCourse(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: SizedBox(
      width: double.infinity,
      child: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.height / 855,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: getListPopularCourse(total: 9),
      ),
    ),
  );
}

getListPopularCourse({int total = 4}) {
  return List.generate(total, (index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Stack(children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: titleTextCommon(
                "App Design \n Course",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  detailCourseTextCommon("24 lesson"),
                  textWithIconRightCommon("4.3 ", Icons.star),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Image.asset(
                  'assets/images/interFace1.png',
                  width: 110,
                  height: 110,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  });
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

titleTextCommon(String s) {
  return Container(
      child: Text(
    s,
    style: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
  ));
}

detailCourseTextCommon(String s, {EdgeInsets specialMargin}) {
  if (specialMargin == null) {
    specialMargin = EdgeInsets.fromLTRB(0, 0, 0, 0);
  }
  return Container(
      margin: specialMargin,
      child: Text(
        s,
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ));
}

void onpressed() {}

itemCategoryCourse(
    {String imageUrl = "interFace1.png",
    String title = "App Design\nCourse",
    String detailCourse = "24 lesson"}) {
  var lightGray = Color(0x99F1F1F1);
  return Stack(
    children: [
      SizedBox(
        width: 230,
        height: 150,
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 200,
            height: double.infinity,
            decoration: BoxDecoration(
                color: lightGray,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/$imageUrl',
                    width: 110,
                    height: 110,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleTextCommon(title),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        detailCourseTextCommon(detailCourse),
                        SizedBox(width: 10),
                        textWithIconRightCommon("4.3 ", Icons.star),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWithIconLeftCommon("4.3 ", Icons.money),
                        SizedBox(width: 40),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              size: 15,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

textWithIconRightCommon(String s, IconData star) {
  return Row(children: <Widget>[
    Text(
      s,
      style: TextStyle(fontSize: 14, color: Colors.black),
    ),
    Icon(
      star,
      size: 12,
      color: Colors.blue,
    ),
  ]);
}

textWithIconLeftCommon(String s, IconData star) {
  return Row(children: [
    Icon(
      star,
      size: 12,
      color: Colors.blue,
    ),
    Text(
      s,
      style: TextStyle(fontSize: 14, color: Colors.blue),
    ),
  ]);
}
