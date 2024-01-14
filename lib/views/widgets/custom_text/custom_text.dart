import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {

  final String? text;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;

   CustomText({
    @required this.text,
    this.fontsize,
    this.fontWeight,
    this.color,
    this.wordSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text("$text",style: TextStyle(fontSize: fontsize,fontWeight: fontWeight,));
  }
}
