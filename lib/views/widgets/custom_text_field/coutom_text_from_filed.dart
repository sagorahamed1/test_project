import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.isOtp = false,
  });

  TextEditingController? controller = TextEditingController();
  String labelText;
  bool isOtp;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return labelText;
        }
        return null;
      },
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: isOtp ? null : labelText,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(8.sw))),
    );
  }
}
