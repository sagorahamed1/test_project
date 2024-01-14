import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
        this.color,
        this.textColor,
        this.height,
        this.width,
        required this.title,
        required this.onTap,
        this.loading = false})
      : super(key: key);


  Color? color;
  Color? textColor;
  double? height;
  double? width;
  String title;
  VoidCallback? onTap;
  bool loading;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: loading
              ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ))
              : Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}