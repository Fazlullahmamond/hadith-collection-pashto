import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  const ListItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade200,
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.teal.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.mirror,
              ),
            ),
            height: 70,
            width: double.infinity,
            child: Image.asset(
              'assets/images/hello.png',
              scale: 100,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          Container(
            child: Text(
              "$title",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pashto',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
