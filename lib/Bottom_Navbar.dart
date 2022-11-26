// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class Bottom extends StatefulWidget {
//   const Bottom({Key? key}) : super(key: key);
//
//   @override
//   State<Bottom> createState() => _BottomState();
// }
//
// class _BottomState extends State<Bottom> {
// int _page = 0;
// GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         items: <Widget>[
//           Icon(Icons.add, size: 30),
//           Icon(Icons.list, size: 30),
//           Icon(Icons.compare_arrows, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _page = index;
//           });
//         },
//       ),
//       body: Container(
//         color: Colors.blueAccent,
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Text(_page.toString(), textScaleFactor: 10.0),
//               ElevatedButton(
//                 child: Text('Go To Page of index 1'),
//                 onPressed: () {
//                   //Page change using state does the same as clicking index 1 navigation button
//                   final CurvedNavigationBarState? navBarState =
//                       _bottomNavigationKey.currentState;
//                   navBarState?.setPage(1);
//                 },
//               )
//             ],
//           ),
//         ),
//       ));
// }