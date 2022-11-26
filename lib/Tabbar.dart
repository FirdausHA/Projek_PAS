import 'package:flutter/material.dart';
import 'package:projek_pas/Screen/Platinum.dart';
import 'package:projek_pas/Screen/White_Gold.dart';
import 'package:projek_pas/Screen/Yellow_Gold.dart';
import 'package:projek_pas/home_page.dart';

import 'Screen/Watch_Gold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab inside body widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            SizedBox(height: 10),
            Text('Product', textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Color(0xfff0deba),
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Gold'),
                        Tab(text: 'Yellow Gold'),
                        Tab(text: 'White Gold'),
                        Tab(text: 'Platinum'),
                      ],
                    ),
                  ),
                  Container(
                      height: 700, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0))
                      ),
                      child: TabBarView(children: <Widget>[
                        WatchGold(),
                        WatchYellow(),
                        WhiteGold(),
                        PlatinumWatch(),
                      ])
                  )
                ])
            ),
          ]),
        ),
      ),
    );
  }
}