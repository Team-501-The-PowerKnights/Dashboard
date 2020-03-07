import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:scouting_dashboard/widgets/animations/animateInText.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            bottom: 7.0,
            top: 7.0,
            left: 10.0,
            right: 10.0,
          ),
          child: FloatingActionButton(
            hoverColor: Colors.blue,
            onPressed: () => print(""),
            child: Icon(
              Icons.settings,
            ),
          ),
        ),
        title: AnimateInText(
          duration: Duration(seconds: 1),
          text: "📊 Scouting Dashboard",
          verticalOffset: 50,
          horizontalOffset: 50,
          mainAxis: MainAxisAlignment.start,
          crossAxis: CrossAxisAlignment.start,
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[FloatingActionButton(onPressed: () {})],
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
          100,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(seconds: 1),
              columnCount: 4,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: Text("Hello"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
