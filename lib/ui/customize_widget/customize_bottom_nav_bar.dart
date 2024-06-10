


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/tab_host_controller.dart';
import '../../model/TabHostModel.dart';
import '../../theme/app_theme.dart';
import '../../theme/graphikRegular.dart';


class CustomBottomNavigationBar extends  HookWidget{
   CustomBottomNavigationBar({super.key});
  final TabHostController controller = Get.find();


  @override
  Widget build(BuildContext context) {



    return Obx(() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        height: Get.height * 0.09,
        width: Get.size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),

        decoration:  BoxDecoration(color: AppTheme().buttonActiveColor,
            borderRadius: BorderRadius.circular(40),
           /* boxShadow: [
          BoxShadow(
              color: Color(0xFFADD4F3),
              blurRadius: 5.0,
              offset: Offset(0, 3))
        ]*/
        ),
        child: ListView.builder(itemBuilder: (context,index){
          return CustomNavigationBarItem(
              isSelected: controller.selectedTab.value.tabName==controller.dashBoardTabsData[index].tabName,
              dashBoardTabModel:controller.dashBoardTabsData[index],
              onTap: (tabData){
                controller.selectedTab.value=tabData;
              });
        },
          itemCount: controller.dashBoardTabsData.length,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          scrollDirection: Axis.horizontal,),
      ),
    ));
  }
}

class CustomNavigationBarItem extends HookWidget {
  const CustomNavigationBarItem(
      {super.key,
        required this.isSelected,
        required this.onTap,
        required this.dashBoardTabModel});

  final bool isSelected;
  final Function(TabHostModel) onTap;
  final TabHostModel dashBoardTabModel;
  @override
  Widget build(BuildContext context) {

    final animationController = useAnimationController(
      duration: Duration(milliseconds: 1500),
    );

    final animationD = useAnimation(Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    ));

    final animation = useMemoized(() {
      return Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );
    }, [animationController]);

    useEffect(() {
      if (isSelected) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
      return null;
    }, [isSelected]);

    // Get the screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        onTap(dashBoardTabModel);
      },
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: ScaleTransition(
          scale: animation,
          child: AnimatedContainer(
            width: screenWidth*0.12,
            height: screenHeight*0.12,

            decoration:  BoxDecoration(color:isSelected?Color(0XFFFC9E12): Color(0XFF1B1A1F),
                borderRadius: BorderRadius.circular(25),
            ),
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeInOut,


            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset( dashBoardTabModel.unselectedIconUrl,
                    height: 20,
                    width: 20,
                    color: Colors.white,

                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}