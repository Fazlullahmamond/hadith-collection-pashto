import 'package:flutter/material.dart';
import 'package:new_project/src/screens/hadith_screen.dart';
import 'package:new_project/src/widgets/list_item.dart';

class ChpaterHadithsWidget extends StatelessWidget {
  final String id;
  final String title;
  final String chapterTitle;
  final String bookName;

  const ChpaterHadithsWidget(
      {required this.title,
      required this.id,
      required this.chapterTitle,
      required this.bookName});

  void selectHadith(context) {
    Navigator.of(context).pushNamed(HadithScreen.routeName, arguments: {
      'id': id,
      'title': title,
      'chapterTitle': chapterTitle,
      'bookName': bookName
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectHadith(context),
      splashColor: Theme.of(context).primaryColor,
      child: ListItem(title: title),
    );
  }
}

//  Container(
//         child: Text(
//           title,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: Colors.lime,
//         ),
//         margin: const EdgeInsets.all(8),
//         padding: const EdgeInsets.all(15),
//       ),
