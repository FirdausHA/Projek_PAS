import 'package:flutter/material.dart';
import 'package:projek_pas/Model/Watch.dart';

import 'Detail.dart';

class WatchGold extends StatefulWidget {
  const WatchGold({Key? key}) : super(key: key);

  @override
  State<WatchGold> createState() => _WatchGoldState();
}

class _WatchGoldState extends State<WatchGold> {
  int indexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff293f6e),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.green[200],
      // ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          gridWatch(),
        ],
      ),
    );
  }

  // Widget header() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 16),
  //     child: Row(
  //       children: [
  //         Material(
  //           color: Colors.grey[300],
  //           borderRadius: BorderRadius.circular(8),
  //           child: InkWell(
  //             onTap: () {},
  //             borderRadius: BorderRadius.circular(8),
  //             child: Container(
  //               height: 40,
  //               width: 40,
  //               alignment: Alignment.center,
  //               child: const Icon(Icons.menu, color: Colors.black),
  //             ),
  //           ),
  //         ),
  //         const Spacer(),
  //         const Icon(Icons.location_on, color: Colors.green, size: 18),
  //         const Text('Garut, Indonesia'),
  //         const Spacer(),
  //         ClipRRect(
  //           borderRadius: BorderRadius.circular(8),
  //           child: Image.asset(
  //             'asset/salad.webp',
  //             fit: BoxFit.cover,
  //             width: 40,
  //             height: 40,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget title() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 16),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: const [
  //         Text(
  //           'Hi Indra',
  //           style: TextStyle(
  //             color: Colors.green,
  //             fontWeight: FontWeight.w500,
  //             fontSize: 18,
  //           ),
  //         ),
  //         Text(
  //           'Find your food',
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //             fontSize: 34,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget search() {
  //   return Container(
  //     height: 60,
  //     margin: const EdgeInsets.symmetric(horizontal: 16),
  //     padding: const EdgeInsets.fromLTRB(8, 2, 6, 2),
  //     decoration: BoxDecoration(
  //       color: Colors.green[50],
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: TextField(
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               prefixIcon: const Icon(Icons.search, color: Colors.green),
  //               hintText: 'Search food',
  //               hintStyle: TextStyle(color: Colors.grey[600]),
  //             ),
  //           ),
  //         ),
  //         Material(
  //           color: Colors.green,
  //           borderRadius: BorderRadius.circular(10),
  //           child: InkWell(
  //             onTap: () {},
  //             borderRadius: BorderRadius.circular(10),
  //             child: Container(
  //               width: 50,
  //               height: 50,
  //               alignment: Alignment.center,
  //               child: const Icon(Icons.bar_chart, color: Colors.white),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget categories() {
  //   List list = ['Food', 'Fruits', 'Vegetables', 'Grocery', 'Drink'];
  //   return SizedBox(
  //     height: 40,
  //     child: ListView.builder(
  //       itemCount: list.length,
  //       scrollDirection: Axis.horizontal,
  //       itemBuilder: (context, index) {
  //         return GestureDetector(
  //           onTap: () {
  //             indexCategory = index;
  //             setState(() {});
  //           },
  //           child: Container(
  //             padding: EdgeInsets.fromLTRB(
  //               index == 0 ? 16 : 16,
  //               0,
  //               index == list.length - 1 ? 16 : 16,
  //               0,
  //             ),
  //             alignment: Alignment.center,
  //             child: Text(
  //               list[index],
  //               style: TextStyle(
  //                 fontSize: 22,
  //                 color: indexCategory == index ? Colors.green : Colors.grey,
  //                 fontWeight: indexCategory == index ? FontWeight.bold : null,
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  Widget gridWatch() {
    return GridView.builder(
      itemCount: dummyWatch.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        mainAxisExtent: 261,
      ),
      itemBuilder: (context, index) {
        Watch watch = dummyWatch[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Deatail(watch: watch);
            }));
          },
          child: Container(
            alignment: Alignment.topRight,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffdd691),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          watch.image,
                          width: 220,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        watch.name,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                // const Align(
                //   alignment: Alignment.bottomRight,
                //   child: Material(
                //     color: Colors.green,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(16),
                //       bottomRight: Radius.circular(16),
                //     ),
                //     child: InkWell(
                //       child: Padding(
                //         padding: EdgeInsets.all(8),
                //         child: Icon(Icons.add, color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
