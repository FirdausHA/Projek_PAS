import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Tabs Example'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            SizedBox(height: 20.0),
            Text('Tabs Inside Body', textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Color(0xfff0deba),
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'Gold'),
                        Tab(text: 'Pink Gold'),
                        Tab(text: 'White Gold'),
                        Tab(text: 'Tab 4'),
                      ],
                    ),
                  ),
                  Container(
                      height: 1400, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(children: <Widget>[
                        HomePage(),
                        WatchGold(),
                        HomePage(),
                        HomePage(),
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