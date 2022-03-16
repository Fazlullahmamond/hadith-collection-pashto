import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/list_item.dart';

class HadithWidget extends StatelessWidget {
  final String id;
  final String chpaterName;
  final String chpaterId;
  final String title;
  final String hadith;
  final String translation;
  final String reference;
  final String inBookReference;

  const HadithWidget({
    required this.id,
    required this.chpaterId,
    required this.chpaterName,
    required this.title,
    required this.hadith,
    required this.translation,
    required this.reference,
    required this.inBookReference,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListItem(title: title),
        // Card(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(15),
        //   ),
        //   elevation: 5,
        //   margin: EdgeInsets.all(10),
        //   child: Container(
        //     padding: EdgeInsets.all(20),
        //     alignment: Alignment.topRight,
        //     width: double.infinity,
        //     child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        //   ),
        // ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 80,
                  child: Image.asset(
                    'assets/images/hadith_card_top.png',
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "$reference \"${hadith.toUpperCase()}\".",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Arabic',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    inBookReference,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    translation,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Pashto',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: 80,
                  child: Image.asset(
                    'assets/images/hadith_card_bottom.png',
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
