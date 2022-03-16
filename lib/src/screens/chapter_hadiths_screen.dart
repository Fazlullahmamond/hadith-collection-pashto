import 'package:flutter/material.dart';
import 'package:new_project/src/widgets/topShow.dart';

import '../widgets/chpater_hadiths_widget.dart';
import 'package:new_project/src/hadiths/hadiths_not_real.dart';

class ChpaterHadiths extends StatefulWidget {
  static const routeName = '/chpater_hadiths';

  @override
  _ChpaterHadithsState createState() => _ChpaterHadithsState();
}

class _ChpaterHadithsState extends State<ChpaterHadiths>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> slide;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    slide = Tween(begin: Alignment.topLeft, end: Alignment.topRight)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final chpaterHadiths = HADHITH.where((hadith) {
      return hadith.chpaterId == routeArg['id'];
    }).toList();
    final title = routeArg['title'];
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopShow(title: routeArg['bookName'], subTitle: title),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: AnimatedList(
                padding: EdgeInsets.all(10),
                itemBuilder: (ctx, index, a) {
                  return AnimatedBuilder(
                      animation: slide,
                      builder: (context, _) {
                        return ChpaterHadithsWidget(
                          id: chpaterHadiths[index].id,
                          title: chpaterHadiths[index].title,
                          chapterTitle: routeArg['title']!,
                          bookName: routeArg['bookName']!,
                        );
                      });
                },
                initialItemCount: chpaterHadiths.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
