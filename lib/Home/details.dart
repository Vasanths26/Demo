import 'package:flutter/material.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer({super.key});

  @override
  State<DetailContainer> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  final List<String> image = [
    'assets/スクリーンショット 2022-06-08 11.42 1.png',
    'assets/スクリーンショット 2022-06-08 11.42 2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: image.length,
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              // margin: const EdgeInsets.only(left: 25, right: 25),
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9),
                    ),
                    child: Image.asset(
                      image[index],
                      fit: BoxFit.cover,
                      height: 186,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 16, left: 20, right: 12),
                    child: const Text(
                      "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 130,
                        margin: const EdgeInsets.only(left: 19, top: 7),
                        padding: const EdgeInsets.only(
                            top: 2, bottom: 2, left: 5, right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "介護付き有料老人ホーム",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 18,
                        margin: const EdgeInsets.only(top: 7, right: 14),
                        child: const Text(
                          "¥ 6,000",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                              child: Text(
                                "5月 31日（水）08 : 00 ~ 17 : 00",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff303030)),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const SizedBox(
                              height: 16,
                              child: Text(
                                "北海道札幌市東雲町3丁目916番地17号",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff303030),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const SizedBox(
                              height: 16,
                              child: Text(
                                "交通費 300円",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff303030),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 16,
                              child: Text(
                                "住宅型有料老人ホームひまわり倶楽部",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff303030)
                                        .withOpacity(0.35)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(right: 19),
                        height: 36,
                        width: 36,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          size: 32,
                          color: const Color(0xff303030).withOpacity(0.15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
