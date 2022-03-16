import 'package:flutter/material.dart';
import 'package:new_project/src/hadiths/hadiths_not_real.dart';
import 'package:new_project/src/models/hadith_model.dart';

import 'package:new_project/src/screens/chapter_hadiths_screen.dart';
import 'package:new_project/src/screens/favorites.dart';
import 'package:new_project/src/screens/hadith_books_screen.dart';
import 'package:new_project/src/screens/search_screen.dart';
import './screens/chapters_screen.dart';
import './screens/hadith_screen.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  List<Hadith> _favoriteHadiths = [];

  void _toggleFavorite(String hadithId) {
    final existngIndex =
        _favoriteHadiths.indexWhere((hadith) => hadith.id == hadithId);

    if (existngIndex >= 0) {
      setState(() {
        _favoriteHadiths.removeAt(existngIndex);
      });
    } else {
      setState(() {
        _favoriteHadiths
            .add(HADHITH.firstWhere((hadith) => hadith.id == hadithId));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoriteHadiths.any((hadith) => hadith.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahih Bukhari',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HadithBook(),
      routes: {
        HadithBook.routeName: (context) => HadithBook(),
        Search.routeName: (context) => Search(),
        FavoriteTab.routeName: (context) => FavoriteTab(_favoriteHadiths),
        Chapters.routeName: (context) => Chapters(),
        ChpaterHadiths.routeName: (context) => ChpaterHadiths(),
        HadithScreen.routeName: (context) =>
            HadithScreen(_toggleFavorite, _isFavorite),
      },
    );
  }
}
