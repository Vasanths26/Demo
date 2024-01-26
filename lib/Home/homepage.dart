import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/Home/list.dart';
import 'package:test_app/Stamp/stampdetails.dart';

import 'component.dart';
import 'details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    this.month,
    this.day,
  });
  final DateTime? month;
  final DateTime? day;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String date = DateFormat("yMMMMd").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 54,
        backgroundColor: const Color(0xffFFFFFF),
        title: Container(
          width: 241,
          height: 35,
          margin: const EdgeInsets.only(left: 24),
          padding:
              const EdgeInsets.only(top: 11, bottom: 11, left: 13, right: 29),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.5),
            color: const Color(0xfff7f7f7),
          ),
          child: const Text(
            "北海道, 札幌市",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 32.49358,
            height: 32.49358,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const StampDetails())));
              },
              child: Image.asset(
                "assets/Filter_icon.png",
                // width: 27.014284133911133,
                // height: 27.077980041503906,
              ),
            ),
          ),
          const SizedBox(
            width: 3.95,
          ),
          Image.asset(
            "assets/Vector.png",
            width: 28,
            height: 25,
          ),
          const SizedBox(
            width: 27,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 11, left: 88, right: 88, bottom: 11),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xfffaaa14), Color(0xffffd78d)],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      // "2022年 5月 26日（木）",
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const ListofDay(
                  height: 67,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: DetailContainer(),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: Card(
              elevation: 2,
              shape: CircleBorder(),
              child: SizedBox(
                width: 50,
                height: 50,
                child: SizedBox(
                  width: 18.666667938232422,
                  height: 23.33340835571289,
                  child: Center(
                    child: Icon(Icons.location_on_outlined),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 86,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
                decoration: const BoxDecoration(color: Colors.white),
                height: 76,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomIcons(
                        text: "さがす",
                        icon: Icons.search,
                        colors: Color(0xffFAAA14)),
                    // SizedBox(
                    //   width: 42,
                    // ),
                    BottomIcons(
                        text: "お仕事",
                        icon: Icons.work_outline,
                        colors: Color(0xff303030)),
                    // SizedBox(width: 33),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 35),
                          child: Text(
                            "さがす",
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xff303030),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: 33),
                    BottomIcons(
                        text: "チャット",
                        icon: Icons.sms_outlined,
                        colors: Color(0xff303030)),
                    // SizedBox(
                    //   width: 42,
                    // ),
                    BottomIcons(
                        text: "マイページ",
                        icon: Icons.person_2_outlined,
                        colors: Color(0xff303030)),
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2.4,
              bottom: 35,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Color(0xffEDA827), Color(0xffFFDA96)],
                  ),
                ),
                child: SizedBox(
                  width: 31.5,
                  height: 31.5,
                  child: Image.asset(
                    'assets/scan-line.png',
                    width: 31.5,
                    height: 31.5,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
