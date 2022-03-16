import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/topShow.dart';

import '../hadiths/hadiths._chapters_fake.dart';
import '../widgets/chapters_widget.dart';

class Chapters extends StatelessWidget {
  static const routeName = '/chapters';

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final chpaters = CHAPTERS.where((chapter) {
      return chapter.bookId == routeArg['id'];
    }).toList();
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            routeArg['bookName']!,
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TopShow(
              title: routeArg['bookName']!,
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(3),
                itemBuilder: (cxt, index) {
                  return ChpatersWidget(
                    no: index + 1,
                    id: chpaters[index].id,
                    title: chpaters[index].title,
                    bookName: routeArg['bookName']!,
                  );
                },
                itemCount: chpaters.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
