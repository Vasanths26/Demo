import 'package:flutter/material.dart';

class Stamps extends StatelessWidget {
  Stamps({super.key});
  final List<String> dates = [
    "2021/11/18",
    "2021/11/17",
    "2021/11/16",
    "2021/11/15",
    "2021/11/14",
    "2021/11/13"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 29),
            height: 247,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 25, left: 20, bottom: 23, right: 20),
                      height: 199,
                      width: 317,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/Group 124.png'),
                          Image.asset('assets/Group 124.png'),
                          Image.asset('assets/Group 124.png'),
                          Image.asset('assets/Group 124.png'),
                          Image.asset('assets/Group 124.png'),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, bottom: 10, left: 16),
            height: 38,
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "スタンプ獲得履歴",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        top: 6, left: 16, right: 17, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dates[index],
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB5B5B5),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Row(
                          children: [
                            Text(
                              "スタンプを獲得しました。",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff454545)),
                            ),
                            Spacer(),
                            Text(
                              "1 個",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff454545),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
