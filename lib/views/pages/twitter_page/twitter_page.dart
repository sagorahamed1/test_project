import 'package:animate_do/animate_do.dart';
import 'package:auto_animaition/views/pages/twitter_page/controller/twitter_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TwitterPage extends StatelessWidget {
   TwitterPage({super.key});

 final TwitterController controller = TwitterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///<-------------------------------------app bar section------------------------------>
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            controller.toggleBoolValue();
          }, icon: Icon(Icons.add))
        ],
      ),


      ///<-----------------------------floating action button---------------------------->
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.play_arrow),
        onPressed: (){
          controller.Increment();
        },
      ),



      /// <----------------------------bottom navigation bar--------------------------->
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,), label: "home"),
          BottomNavigationBarItem(icon: Stack(
            children: [
              Icon(Icons.notifications,color: Colors.blue,),
              Positioned(
                child: FadeInDown(
                  from: 20,
                  delay: Duration(microseconds: 800),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(
                      child: Obx(() => Text("${controller.notificationIndex}",style: TextStyle(color: Colors.white,fontSize: 10),),
                      )
                    ),
                  ),
                ),
              )
            ],
          ),label: "notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blue,),label: "profile")
        ],
      ),



      /// ---------------------------body section--------------------->
      body: Obx(() =>  Center(
        child: ZoomOut(
            animate: controller.isValue.value,
            from: 30,
            delay: Duration(seconds: 1),
            child: SvgPicture.asset("assets/images/Group.svg",height: 70.h,width: 50.w,)),
      ),)


    );
  }
}
