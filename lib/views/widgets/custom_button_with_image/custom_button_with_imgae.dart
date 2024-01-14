import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtomWithImage extends StatelessWidget {

  final String text;
  final String image;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  VoidCallback? onTap;
  bool?  loading;

   CustomButtomWithImage({super.key,
     required this.text,
     required this.image,
     required this.color,
     this.textColor,
     this.height,
     this.loading,
     this.onTap,
     this.width
   });


   /// -------------------you can use only svg image----------------------------------->>>
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.sw)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$text  "),
              SvgPicture.asset("$image")
            ],
          ),
        )
      ),
    );
  }
}
