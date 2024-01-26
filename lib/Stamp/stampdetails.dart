import 'package:flutter/material.dart';
import 'package:test_app/Edit%20Details/edit_store_information.dart';

import 'stamps.dart';

class StampDetails extends StatelessWidget {
  const StampDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.indigo.withOpacity(0.3)),
                  padding: const EdgeInsets.only(top: 3, left: 16, right: 19),
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xff939eff),
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_back_ios,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 124,
                            height: 20,
                            child: Text(
                              "スタンプカード詳細",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => EditStore()),
                              ),
                            ),
                            child: const SizedBox(
                              height: 24,
                              width: 24,
                              child: Icon(
                                Icons.remove_circle_outline,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Mer キッチン",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            child: Text(
                              "現在の獲得数",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          SizedBox(
                            child: Text(
                              "30 ",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              "個",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 116,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  child: Stamps(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
