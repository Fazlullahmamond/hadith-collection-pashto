import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/bottom_nav_bar.dart';
import 'package:new_project/src/widgets/drawer.dart';

class Search extends StatelessWidget {
  static const routeName = '/search';
  // final Function toggleFavorite;
  // final Function isFavorite;

  // const Search(this.toggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      endDrawer: MainDrawer(),
      // drawer: ,
      body: Center(
        child: Text('search'),
      ),
      bottomNavigationBar: BottomNav(
        search: true,
      ),
    );
  }
}
