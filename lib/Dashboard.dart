import 'package:flutter/material.dart';
import 'package:wisata_bandung/GestureDetect.dart';
import 'package:wisata_bandung/main_screen.dart';
import 'navigation_and_routing/FirstScreen.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('menu'),
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 52.0,
                  ),
                  Image.asset(
                    "images/image.png",
                    width: 52.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Welcome Ega Sudrajat",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    InkWell(
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MainScreen();
                      }));},
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/todo.png",
                                  width: 64.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Lembang",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Wisata bandung",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FirstScreen();
                      }));},
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/note.png",
                                  width: 64.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Navigation & Routing",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "2 Items",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return GestureDetect();
                      }));},
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/calendar.png",
                                  width: 64.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Gesture Detect",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "2 Items",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/settings.png",
                                  width: 64.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Todo List",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "2 Items",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
