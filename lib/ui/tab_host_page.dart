import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/tab_host_controller.dart';
import 'customize_widget/customize_bottom_nav_bar.dart';

class TabHostPage extends HookWidget {
  TabHostPage({Key? key}) : super(key: key);

  final TabHostController _tabHostController = Get.find();


  @override
  Widget build(BuildContext context) {

    final animationController = useAnimationController(
      duration: const Duration(seconds: 4),
    );

    // Get the screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFFF3E9DE),
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarDividerColor: Color(0xFFFFFFFF),
          // systemNavigationBarContrastEnforced: false,
          // systemStatusBarContrastEnforced: false,
        ),
        child: WillPopScope(
            child: Obx(() => Scaffold(
              body:Stack(
                  children: [
                    _tabHostController.selectedTab.value.page,
                    Positioned(
                      bottom: screenHeight*0.05,
                      left: 0,
                      right: 0,
                      child:   CustomBottomNavigationBar().animate(effects: [
                        FadeEffect(
                            duration: 1000.ms,

                        ),
                        SlideEffect(
                          duration: Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                          begin: Offset(0, 1), // Slide from the bottom
                          end: Offset(0, 0),
                        )
                      ]),
                    ),


                  ])
            )),
            onWillPop: () {
              return Future.value(false);
            }));
  }
}