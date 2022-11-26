import 'package:flutter/material.dart';
import 'package:projek_pas/Model/Watch.dart';

import 'Detail.dart';

class PlatinumWatch extends StatefulWidget {
  const PlatinumWatch({Key? key}) : super(key: key);

  @override
  State<PlatinumWatch> createState() => _PlatinumWatch();
}

class _PlatinumWatch extends State<PlatinumWatch> {
  int indexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 30),
          gridWatch(),
        ],
      ),
    );
  }

  Widget gridWatch() {
    return GridView.builder(
      itemCount: dummyWatch_3.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 4,
        mainAxisExtent: 265,
      ),
      itemBuilder: (context, index) {
        Watch watch = dummyWatch_3[index];
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
                    const SizedBox(height: 5),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          watch.name,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "customFont",
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
