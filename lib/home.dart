// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:scouting_dashboard/widgets/animations/animateInText.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

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
          textStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              splashColor: Colors.green,
              hoverColor: Colors.blue,
              onPressed: () {},
              child: Icon(Icons.refresh),
            ),
          ),
        ],
      ),
      body: GridView.count(crossAxisCount: 4, children: <Widget>[]),
    );
  }
}
