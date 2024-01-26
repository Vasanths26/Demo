import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {
  const CheckBoxes({
    super.key,
    this.text4 = ' ',
    this.width = 70,
    required this.text,
    required this.text2,
    required this.text3,
  });

  final String text;
  final String? text4;
  final String text2;
  final String text3;
  final bool isChecked = false;
  final double? width;

  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 290,
      margin: const EdgeInsets.only(top: 16, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff454545),
                ),
              ),
              const Text(
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
            width: 290,
            height: 24,
            child: Row(
              children: [
                SizedBox(
                  height: 24,
                  width: widget.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: !widget.isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            newValue = !widget.isChecked;
                          });
                        },
                        activeColor: Colors.orange,
                      ),
                      Text(
                        widget.text2,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        widget.text4!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: widget.isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              newValue = !widget.isChecked;
                            });
                          }),
                      Text(
                        widget.text3,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Boxes8 extends StatefulWidget {
  const Boxes8({super.key});

  @override
  State<Boxes8> createState() => _Boxes8State();
}

class _Boxes8State extends State<Boxes8> {
  List<String> text = ['月', '火', '水', '木'];
  List<String> text1 = ['金', '土', '日', '祝'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      margin: const EdgeInsets.only(top: 16, left: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                '定休日',
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
          const SizedBox(
            height: 2,
          ),
          Expanded(
            child: SizedBox(
              height: 23,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                              value: false,
                              onChanged: (newValue) {
                                setState(() {
                                  newValue = !false;
                                });
                              }),
                          Text(
                            text[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 23,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: text1.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor:
                                  index == 0 ? Colors.white : Colors.orange,
                              value: index == 0 ? false : true,
                              onChanged: (newValue) {
                                setState(() {
                                  newValue = index == 0 ? true : false;
                                });
                              }),
                          Text(
                            text1[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
