import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimateInText extends StatelessWidget {
  final double verticalOffset;
  final double horizontalOffset;
  final String text;
  final Duration duration;
  final TextStyle textStyle;
  final MainAxisAlignment mainAxis;
  final CrossAxisAlignment crossAxis;

  AnimateInText({
    this.verticalOffset = 0.0,
    this.horizontalOffset = 0.0,
    this.textStyle,
    this.mainAxis,
    this.crossAxis,
    @required this.text,
    @required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxis,
      crossAxisAlignment: crossAxis,
      children: AnimationConfiguration.toStaggeredList(
        duration: duration,
        childAnimationBuilder: (widget) => SlideAnimation(
          horizontalOffset: horizontalOffset,
          verticalOffset: verticalOffset,
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          ...(text.split(" ")).map(
            (word) {
              return Padding(
                padding: EdgeInsets.only(left: 7),
                child: (textStyle == null)
                    ? Text(word)
                    : Text(
                        word,
                        style: textStyle,
                      ),
              );
            },
          )
        ],
      ),
    );
  }
}
