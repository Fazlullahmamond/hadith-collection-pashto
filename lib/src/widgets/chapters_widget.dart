import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/list_item.dart';
import '../screens/chapter_hadiths_screen.dart';

class ChpatersWidget extends StatelessWidget {
  final String id;
  final int no;
  final String title;
  final String bookName;

  const ChpatersWidget({
    required this.no,
    required this.id,
    required this.title,
    required this.bookName,
  });

  void selectChpaterHadiths(BuildContext context) {
    Navigator.of(context).pushNamed(ChpaterHadiths.routeName,
        arguments: {'id': id, 'title': title, 'bookName': bookName});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectChpaterHadiths(context),
      child: ListItem(title: title,)
    );
  }
}
