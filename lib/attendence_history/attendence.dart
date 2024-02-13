import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: Container(
      child: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.yellow[400],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.zero)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            num[index],
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            compaint[index],
                            style: TextStyle(fontSize: 15, color: Colors.black),
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
      )),
    ),
        ));
  }
}
