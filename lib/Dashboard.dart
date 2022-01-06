import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wisata_bandung/GestureDetect.dart';
import 'package:wisata_bandung/barcode_scanner/Scanner.dart';
import 'package:wisata_bandung/kalkulator/MainKalkulator.dart';
import 'package:wisata_bandung/main_screen.dart';
import 'package:wisata_bandung/silvers/PixelPage.dart';
import 'package:wisata_bandung/silvers_list_grid/LearningPathPage.dart';
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
            child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: <Widget>[
                  Image.asset("images/image.png", width: 52.0),
                  SizedBox(width: 10),
                  Text("Ega Sudrajat", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.start)
                ])),
            Wrap(spacing: 10, runSpacing: 10.0, children: <Widget>[
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset("images/todo.png", width: 34.0),
                                    SizedBox(height: 10.0),
                                    Text("Bandung", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FirstScreen();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset(
                                      "images/note.png",
                                      width: 34.0,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Navigation & Routing",
                                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0),
                                      textAlign: TextAlign.center,
                                    )
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return GestureDetect();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset("images/calendar.png", width: 34.0),
                                    SizedBox(height: 10.0),
                                    Text("Gesture Detect", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0))
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MainKalkulator();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset("images/settings.png", width: 34.0),
                                    SizedBox(height: 10.0),
                                    Text("Kalkulator", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0)),
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PixelPage();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset("images/settings.png", width: 34.0),
                                    SizedBox(height: 10.0),
                                    Text("Silvers", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0)),
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LearningPathPage();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Image.asset("images/settings.png", width: 34.0),
                                    SizedBox(height: 10.0),
                                    Text("Silvers List & Grid", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0)),
                                  ])))))),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ScannerQR();
                    }));
                  },
                  child: SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                          color: Color.fromARGB(255, 210, 250, 199),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: <Widget>[
                                    Icon(Icons.qr_code, size: 34, color: Colors.deepOrange),
                                    SizedBox(height: 10.0),
                                    Text("ScannerQR", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13.0)),
                                  ]))))))
            ])
          ]),
        )));
  }
}
