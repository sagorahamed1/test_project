import 'package:auto_animaition/views/pages/twitter_page/twitter_page.dart';
import 'package:auto_animaition/views/widgets/custom_button/custom_button.dart';
import 'package:auto_animaition/views/widgets/custom_button_with_image/custom_button_with_imgae.dart';
import 'package:auto_animaition/views/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/custom_text_field/coutom_text_from_filed.dart';
import '../animate_do_page/animate_do_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
            ),

            /// <----------------custom text------------------------->
            CustomText(text: "Custom Text", color: Colors.green, fontsize: 30.sp),

            ///<------------------custom button---------------------->
            CustomButton(
              title: "Custom Button",
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const FirstPage()));
                Get.to(AnimateDoPage(),
                    transition: Transition.zoom
                );
              },
              color: Colors.cyan,
              height: 50,
            ),
            SizedBox(height: 30,),

            ///<----------------------coutom button with image or icon-------------------------->
            CustomButtomWithImage(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TwitterPage()
                ));
              },
                text: "Costom Button ",
                image: "assets/images/buttonIcon.svg",
                color: Colors.greenAccent,
                height: 50,
            ),


            SizedBox(height: 30,),


            /// -----------------------------custom text from filed--------------------------->
            CustomTextField(labelText: "Custom field",)
          ],
        ),
      ),
    );
  }
}
