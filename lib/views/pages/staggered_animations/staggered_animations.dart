import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StaggeredAnimationPage extends StatelessWidget {
  const StaggeredAnimationPage({super.key});


  /// <------------------------staggered animation-------------------------->
  @override
  Widget build(BuildContext context) {
    int columnCount = 3;
    return Scaffold(
      appBar: AppBar(),


      /// <------------------this is staggered animation for list view-------------------->
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: columnCount,
          children: List.generate(
            100,
                (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),




      /// <------------------this is staggered animation for list view-------------------->
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: YourListChild(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
