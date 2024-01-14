import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimateDoPage extends StatelessWidget {
  const AnimateDoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      /// <---------------------app bar----------------------->
      appBar: AppBar(
        title: Text("animated do example"),
        actions: [
          FadeInLeft(
              from: 40,
              delay: Duration(microseconds: 500),
              child: Icon(Icons.arrow_forward_ios, color: Colors.blue,size: 20,))
        ],
      ),



      ///<----------------------floating action button------------>
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {},
      ),



      ///<------------------body section------------------------>
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          ElasticIn(
            delay: Duration(microseconds: 2),
            child: const Icon(
              Icons.ac_unit_sharp,
              color: Colors.blue,
              size: 50,
            ),
          ),


          FadeInDown(
              delay: Duration(microseconds: 200),
              child: const Text(
                "This is Text",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )),



          FadeInDown(
            delay: Duration(microseconds: 800),
              child: const Text(
            "this is anther Text example",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          )),



          FadeInLeft(
            /// animate form left 100px to right
            from: 100,
            delay: Duration(microseconds: 200),
            child: Container(
              height: 2,
              width: 250,
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}
