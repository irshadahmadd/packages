import 'package:flutter/material.dart';
import 'Createid.dart';
import 'Packeges.dart';
import 'myid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> IdScreen = [
    CreateID(),
    MYIDs(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1f1f1f),
            leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.cameraswitch_sharp),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.add_alert_rounded),
              SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.orange,
              labelColor: Colors.white,
              tabs: [
                Tab(text: "Cearte ID"),
                Tab(text: "MyIDs"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CreateID(),
              MYIDs(),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(left: 20),
            height: 80,
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Packge()));
                        },
                        child: Text(
                          "MORE PACKAGES",
                          style: TextStyle(color: Colors.white),
                        ))),
              ],
            ),
          ),
        ));
  }
}
