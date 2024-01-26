import 'package:flutter/material.dart';
import 'check_boxes.dart';
import 'components.dart';
import 'text_field.dart';

class EditStore extends StatelessWidget {
  EditStore({super.key});
  final TextEditingController shopName = TextEditingController();
  final TextEditingController representativeName = TextEditingController();
  final TextEditingController storeNumber = TextEditingController();
  final TextEditingController storeAddress = TextEditingController();
  final TextEditingController catchCopy = TextEditingController();
  final TextEditingController noOfSeats = TextEditingController();
  final TextEditingController giftName = TextEditingController();

  final List<String> image1 = [
    'assets/Input.png',
    'assets/Input.png',
    'assets/Input.png',
  ];

  final List<String> image2 = [
    'assets/Input1.png',
    'assets/スクリーンショット 2021-11-22 15.14 1.png',
    'assets/スクリーンショット 2021-11-21 21.37 1.png',
  ];

  final List<String> image3 = [
    'assets/スクリーンショット 2021-11-21 21.38 3.png',
    'assets/スクリーンショット 2021-11-22 14.52 3.png',
    'assets/スクリーンショット 2021-11-22 14.54 3.png',
  ];

  final List<String> image4 = [
    'assets/スクリーンショット 2021-11-07 0.37 2.png',
    'assets/スクリーンショット 2021-11-07 0.50.png',
    'assets/スクリーンショット 2021-11-07 0.51.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 53,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 19.8, right: 19.13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffB8B8B8),
                        child: Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "店舗プロフィール編集",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Stack(
                      children: [
                        const Icon(Icons.notifications_outlined, size: 30),
                        Positioned(
                          top: 3,
                          right: 0,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffEE7D42),
                            ),
                            child: const Center(
                              child: Text(
                                "99+",
                                style: TextStyle(
                                  fontSize: 6.951724052429199,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
              Texts(
                textEditingController: shopName,
                text: "店舗名",
                text2: "Mer キッチン",
              ),
              Texts(
                textEditingController: representativeName,
                text: "代表担当者名",
                text2: "林田　絵梨花",
              ),
              Texts(
                textEditingController: storeNumber,
                text: "店舗電話番号",
                text2: "123 - 4567 8910",
              ),
              Texts(
                textEditingController: storeAddress,
                text: "店舗住所",
                text2: "大分県豊後高田市払田791-13",
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 219.0068359375,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Image.asset(
                  'assets/snazzy-image (1) 1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 19.5, top: 16),
                height: 117,
                width: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 18,
                        child: Texts2(text: '店舗外観', text2: '（最大3枚まで）')),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              height: 91,
                              width: 91,
                              child: Image.asset(
                                'assets/スクリーンショット 2021-11-22 15.17 1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Color(0xffE8E8E8),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: 91,
                              width: 91,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  'assets/スクリーンショット 2021-11-22 15.17 1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Color(0xffE8E8E8),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 91,
                          width: 91,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 30,
                                color: Colors.grey,
                              ),
                              Text(
                                "写真を追加",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListofImage(
                text: '店舗外観',
                text2: '（最大3枚まで）',
                image: image1,
              ),
              ListofImage(
                text: '料理写真',
                text2: '（1枚〜3枚ずつ追加してください）',
                image: image2,
              ),
              Container(
                margin: const EdgeInsets.only(left: 19.5, top: 16),
                height: 117,
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 18,
                        child: Texts2(
                          text: 'メニュー写真',
                          text2: '（1枚〜3枚ずつ追加してください）',
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 91,
                      width: 290,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: image3.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 91,
                                  width: 91,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      image3[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Icon(
                                    Icons.close,
                                    size: 20,
                                    color: Color(0xffE8E8E8),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, top: 16, right: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "営業時間*",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454545),
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ExpandTile(
                          text: "10 : 00",
                          icon: true,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "〜",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8),
                        ExpandTile(
                          text: "20 : 00",
                          icon: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, top: 16, right: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "ランチ時間",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454545),
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ExpandTile(
                          text: "11 : 00",
                          icon: true,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "〜",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8),
                        ExpandTile(
                          text: "15 : 00",
                          icon: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 64,
                width: 200,
                margin: const EdgeInsets.only(top: 16, left: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "営業時間*",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454545),
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ExpandTile(
                      text: '料理カテゴリー',
                      icon: true,
                      width: 194,
                    )
                  ],
                ),
              ),
              //
              const Boxes8(),
              //
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, top: 16, right: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "予算",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454545),
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ExpandTile(
                          text: "¥ 1,000",
                          icon: false,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "〜",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8),
                        ExpandTile(
                          text: "¥ 2,000",
                          icon: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Texts(
                textEditingController: catchCopy,
                text: "キャッチコピー",
                text2: "美味しい！リーズナブルなオムライスランチ！",
              ),
              Texts(
                textEditingController: noOfSeats,
                text: "座席数",
                text2: "40席",
              ),
              const CheckBoxes(
                text: '喫煙席',
                text2: "有",
                text3: "無",
              ),
              const CheckBoxes(
                text: '駐車場',
                text2: "有",
                text3: "無",
              ),
              const CheckBoxes(
                text: '来店プレゼント',
                text2: "有",
                text3: "無",
                text4: ' （最大３枚まで）',
                width: 199,
              ),
              Container(
                margin: const EdgeInsets.only(left: 19.5, top: 16),
                height: 117,
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 91,
                      width: 290,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: image4.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 91,
                                  width: 91,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      image4[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Icon(
                                    Icons.close,
                                    size: 20,
                                    color: Color(0xffE8E8E8),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),

              Texts(
                textEditingController: giftName,
                text: "来店プレゼント名",
                text2: "いちごクリームアイスクリーム, ジュース",
              ),

              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffEE7D42),
                      Color(0xffFFC8AB),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                  child: const Center(
                    child: Text(
                      "編集を保存",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 53,
              )
            ],
          ),
        ),
      ),
    );
  }
}
