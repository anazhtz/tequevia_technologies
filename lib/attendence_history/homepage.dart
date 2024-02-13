import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tequevia_technologies/main.dart';

import 'attendence.dart';


void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Complaint History",
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.normal, fontSize: 15,),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade900,
                          child: Icon(Icons.search,)),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5),bottom: Radius.circular(5)),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              Attendence()
            ],
          ),
        ),
      ),
    );
  }
}
