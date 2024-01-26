import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts(
      {super.key,
      required this.textEditingController,
      required this.text,
      required this.text2});
  final TextEditingController textEditingController;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                text,
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
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 38,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child: TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff454545),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Texts2 extends StatelessWidget {
  const Texts2({super.key, required this.text, required this.text2});
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
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
        
        Text(
          text2,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff9C9896),
          ),
        ),
      ],
    );
  }
}
