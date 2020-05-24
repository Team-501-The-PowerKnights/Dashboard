// Flutter imports:
import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  const Panel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Color.fromRGBO(77, 77, 51, 1),
      child: Text("Some data"),
    );
  }
}
