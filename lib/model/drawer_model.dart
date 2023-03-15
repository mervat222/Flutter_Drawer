import 'package:flutter/material.dart';
class DrawerModel{
  String title;
  IconData icon;
  DrawerModel({required this.title,required this.icon});
}

List<DrawerModel>items=[
  DrawerModel(title:"Home", icon:Icons.home),
  DrawerModel(title:"Help", icon:Icons.person_pin_outlined),
  DrawerModel(title:"FeedBack", icon:Icons.help),
  DrawerModel(title:"Invite Friend", icon:Icons.people),
  DrawerModel(title:"Rate the app", icon:Icons.share),
  DrawerModel(title:"About Us", icon:Icons.info),
];