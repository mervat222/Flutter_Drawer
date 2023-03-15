import 'package:flutter/material.dart';

import 'drawer.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:  DrawerScreen(),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => scaffoldKey.currentState?.openDrawer(),
            ),
            const Center(
                child: Text(
              "How Can We help you ?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 15),
              child: Material(
                elevation: 3,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search Docs, Reports, Beacon, etc',
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Center(
                child: ElevatedButton(onPressed: () {}, child: const Text("Search")))
          ],
        ),
      ),
    );
  }
}