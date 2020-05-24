// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:scouting_dashboard/home.dart';

void main() => ScoutingDashboard();

class ScoutingDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "📊 Scouting Dashboard",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
    );
  }
}
