import 'package:flutter/material.dart';

class TopShow extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool favorite;
  const TopShow(
      {this.title = 'Hadith Pro', this.subTitle = '', this.favorite = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(200, 30),
              bottomRight: Radius.elliptical(200, 30),
            ),
          ),
        ),
        Positioned(
          top: 10,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            // textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          top: 40,
          child: Text(
            subTitle,
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.white),
            // textAlign: TextAlign.right,
          ),
        ),
      
      ],
    );
  }
}
