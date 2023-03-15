import 'package:flutter/material.dart';

import 'drawer.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:  DrawerScreen(),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/msg1990103496-26852.jpg",
                  ),
                  IconButton(
                      onPressed: () => scaffoldKey.currentState?.openDrawer(),
                      icon: const Icon(Icons.menu)),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 18),
                  child: Text(
                    "Your FeedBack",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              const Text("Give your best time for this moment",
                  style: TextStyle(fontSize: 18)),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Material(
                  elevation: 10,
                  child: TextFormField(
                    maxLines: 3,
                    decoration: const InputDecoration(
                        hintText: "Enter your feedback... ",
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                  width: 120,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Send")))
            ],
          ),
        ),
      ),
    );
  }
}