import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:scouting_dashboard/widgets/animations/animateInText.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(
              Icons.settings,
            ),
          ),
        ),
        title: AnimateInText(
          duration: Duration(seconds: 1),
          text:
              "📊 Scouting Dashboard, ${DateFormat.yMMMd().format(DateTime.now())}",
          verticalOffset: 50,
          horizontalOffset: 50,
          mainAxis: MainAxisAlignment.start,
          crossAxis: CrossAxisAlignment.start,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
