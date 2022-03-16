import 'package:flutter/material.dart';
import 'package:new_project/src/hadiths/hadith_books_test.dart';
import 'package:new_project/src/hadiths/hadiths._chapters_fake.dart';
import 'package:new_project/src/models/hadith_model.dart';
import 'package:new_project/src/widgets/bottom_nav_bar.dart';
import 'package:new_project/src/widgets/chpater_hadiths_widget.dart';
import 'package:new_project/src/widgets/drawer.dart';

class FavoriteTab extends StatelessWidget {
  static const routeName = '/favorite';
  final List<Hadith> favoriteHadiths;

  FavoriteTab(this.favoriteHadiths);

  @override
  Widget build(BuildContext context) {
    if (favoriteHadiths.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Favorite'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text('No Favirute'),
        ),
        bottomNavigationBar: BottomNav(
          favorite: true,
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Favorite'),
        ),
        drawer: MainDrawer(),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (ctx, index) {
            var chpater = CHAPTERS.firstWhere(
                (chapter) => chapter.id == favoriteHadiths[index].chpaterId);
            var book = BOOKS.firstWhere((book) => book.id == chpater.bookId);
            return ChpaterHadithsWidget(
              id: favoriteHadiths[index].id,
              title: favoriteHadiths[index].title,
              chapterTitle: chpater.title,
              bookName: book.name,
            );
          },
          itemCount: favoriteHadiths.length,
        ),
        bottomNavigationBar: BottomNav(
          favorite: true,
        ),
      );
    }
  }
}
