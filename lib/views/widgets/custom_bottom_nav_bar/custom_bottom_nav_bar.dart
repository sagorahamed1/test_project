import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomAnimatedBar extends StatelessWidget {
  const BottomAnimatedBar({super.key});

  @override
  Widget build(BuildContext context) {
    var heart = false;
    dynamic selected;
    PageController controller = PageController();
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        ///<--------------------animated down to up and hide titie text------------------->
        option: AnimatedBarOptions(),


        ///<------------------------bottom nab items------------------->
        items: [
          BottomBarItem(
            icon: Icon(Icons.house_outlined),
            title: Text("Home"),
            selectedColor: Colors.lightBlue,
            unSelectedColor: Colors.white
            ///<---------------------------you can use badge here------------------>
            // badge: const Text('9+'),
            // showBadge: true,
          ),
          BottomBarItem(
            icon: Icon(Icons.delete_outlined),
            selectedIcon: Icon(Icons.delete_sweep_outlined),
            title: Text("Archive"),
              selectedColor: Colors.lightBlue
          ),


          BottomBarItem(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.delete_sweep_outlined),
            title: Text("Search"),
              selectedColor: Colors.lightBlue
          ),


          BottomBarItem(
            icon: Icon(Icons.person),
            selectedIcon: Icon(Icons.delete_sweep_outlined),
            title: Text("Profile"),
              selectedColor: Colors.lightBlue
          )
        ],


        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
            selected = index;
        },
      ),


      floatingActionButton: GestureDetector(
        onTap: (){},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueAccent
          ),
          child: const Icon(Icons.add,color: Colors.white,),
        ),
      ),


      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       heart = !heart;
      //     },
      //     backgroundColor: Colors.blueAccent,
      //     child: Container(
      //       height: 70,
      //       width: 70,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(100),
      //       ),
      //       child: Icon(Icons.add,color: Colors.white,),
      //     )
      // ),

       // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,


      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [
            Center(child: Text('Home')),
            Center(child: Text('Archive')),
            Center(child: Text('Search')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
