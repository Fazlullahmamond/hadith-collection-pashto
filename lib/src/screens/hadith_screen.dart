import 'package:flutter/material.dart';

import 'package:new_project/src/widgets/hadith_widget.dart';
import 'package:new_project/src/hadiths/hadiths_not_real.dart';
import 'package:new_project/src/widgets/topShow.dart';

class HadithScreen extends StatelessWidget {
  static const routeName = '/hadith';

  final Function toggleFavorite;
  final Function isFavorite;

  const HadithScreen(this.toggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final chpaterHadiths = HADHITH.where((hadith) {
      return hadith.id == routeArg['id'];
    }).toList();
    final id = routeArg['id'];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: isFavorite(id) ? Colors.red : Colors.white,
              ),
              onPressed: () => toggleFavorite(id)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TopShow(
                title: routeArg['bookName']!,
                subTitle: routeArg['chapterTitle']!),
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemBuilder: (ctx, index) {
                  return HadithWidget(
                    id: chpaterHadiths[index].id,
                    chpaterName: routeArg['chapterTitle']!,
                    title: chpaterHadiths[index].title,
                    chpaterId: chpaterHadiths[index].chpaterId,
                    hadith: chpaterHadiths[index].hadith,
                    inBookReference: chpaterHadiths[index].inBookReference,
                    translation: chpaterHadiths[index].translation,
                    reference: chpaterHadiths[index].reference,
                  );
                },
                itemCount: chpaterHadiths.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
