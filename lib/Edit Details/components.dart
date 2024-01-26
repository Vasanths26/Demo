import 'package:flutter/material.dart';

import 'text_field.dart';

class ListofImage extends StatelessWidget {
  const ListofImage(
      {super.key,
      required this.text,
      required this.text2,
      required this.image});
  final String text;
  final String text2;
  final List image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 19.5, top: 16),
      height: 117,
      width: 330,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18, child: Texts2(text: text, text2: text2)),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 91,
            width: 290,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    height: 91,
                    width: 91,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        image[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class ExpandTile extends StatelessWidget {
  const ExpandTile({super.key, required this.text, required this.icon, this.width=138});
  final String text;
  final bool icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff454545),
        ),
      ),
      width: width,
      height: 38,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
          const SizedBox(width: 8),
          icon == true
              ? const Icon(
                  Icons.expand_more_outlined,
                  color: Color(0xff454545),
                )
              : Container(),
        ],
      ),
    );
  }
}
