import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerCourse(){
  return Row(
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
  );
}