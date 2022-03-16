import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/bottom_nav_bar.dart';
import 'package:new_project/src/widgets/drawer.dart';

import '../widgets/hadith_books_widget.dart';
import '../widgets/topShow.dart';
import '../hadiths/hadith_books_test.dart';

class HadithBook extends StatelessWidget {
  static const routeName = '/hadith_book';

  @override
  Widget build(BuildContext context) {
    // final routeArg =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final hadithBook = BOOKS.where((hadith) => true).toList();
    // final title = routeArg['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith Books'),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopShow(
              subTitle: 'V.1.0.0',
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemBuilder: (ctx, index) {
                  return HadithBookWidget(
                    id: hadithBook[index].id,
                    name: hadithBook[index].name,
                  );
                },
                itemCount: hadithBook.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(home: true),
    );
  }
}
