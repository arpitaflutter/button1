import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Dark shadow button"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Container(
            height: 60,width: 150,
            decoration: BoxDecoration(
              color:  Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.shade500,
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ]
            ),
            child: Center(child: Text("Tap",style: TextStyle(fontSize: 15,color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
