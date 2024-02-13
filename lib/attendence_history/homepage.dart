import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: Homepage(),
  debugShowCheckedModeBanner: false,));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                    hintStyle: const TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade900,
                        child: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(5), bottom: Radius.circular(5)),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.8, // adjust as needed
                child: Attendence(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Attendence extends StatelessWidget {
  var name = [
    "MUHAMMED SHIBIL.K",
    "MUHAMMED SHIBIL.K",
    "MUHAMMED SHIBIL.K",
    "MUHAMMED SHIBIL.K",
  ];
  var address = [
    "Kuttassri House,Elankur Post,Manjery,Malappuram",
    "Kuttassri House,Elankur Post,Manjery,Malappuram",
    "Kuttassri House,Elankur Post,Manjery,Malappuram",
    "Kuttassri House,Elankur Post,Manjery,Malappuram"
  ];
  var num = ["808977789", "808977789", "808977789", "808977789"];
  var compaint = [
    "Complaint : Fan motor not working indoor",
    "Complaint : Fan motor not working indoor",
    "Complaint : Fan motor not working indoor",
    "Complaint : Fan motor not working indoor"
  ];

  Attendence({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
              return Card(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.yellow[400],
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "KB-1007",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  width: 80,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[900],
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.zero)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Escalated",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          name[index],
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              address[index],
                              style:
                              const TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              num[index],
                              style:
                              const TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              compaint[index],
                              style:
                              const TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: name.length,
           ));
    }
}