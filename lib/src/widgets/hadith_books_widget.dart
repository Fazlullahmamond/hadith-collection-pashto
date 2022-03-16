import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/list_item.dart';
import '../screens/chapters_screen.dart';

class HadithBookWidget extends StatelessWidget {
  final String id;
  final String name;

  const HadithBookWidget({
    required this.id,
    required this.name,
  });

  void selectHadithBook(BuildContext context) {
    Navigator.of(context).pushNamed(Chapters.routeName, arguments: {
      'id': id,
      'bookName': name,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectHadithBook(context),
      child: ListItem(title: name),
    );
  }
}
