import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moni_real_estate/theme/app_theme.dart';

import '../../theme/graphikRegular.dart';

class HomePage extends  HookWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Get the screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final moneyAnimationController = useAnimationController(
      duration: const Duration(seconds: 2),
    );
    var endValue =2212;
    final animation = IntTween(begin: 0, end: endValue)
        .animate(moneyAnimationController);

    var endValue2 =1034;
    final animation2 = IntTween(begin: 0, end: endValue2)
        .animate(moneyAnimationController);

    useEffect(() {
      moneyAnimationController.forward();
      return null;
    }, const []);


    return Scaffold(
      body: Container(
        width: Get.size.width,
        height: Get.size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3E9DE),
              Color(0xFFFFE4C4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
          /*  gradient: RadialGradient(
            colors: [

              Color(0xFFFADBE), // Start color
              Color(0xFFFADBB6), // End color (example: orange)
              // Color.fromARGB(255, 0, 0, 255), // Start color (e.g., blue)
              // Color.fromARGB(255, 255, 0, 255), // End color (e.g., purple)

            ],
            center: Alignment.center, // Center of the gradient
            radius: 1.0, // Radius of the gradient
          ),*/
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: screenWidth * 0.4,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location.svg",
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text("Saint Petersburg",
                                    textAlign: TextAlign.center,
                                    style: graphikRegular(
                                        fontColor: Color(0xFFA5957E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              )
                            ],
                          ))
                          .animate(/*effects: [
                        const SlideEffect(
                            duration: Duration(
                                milliseconds: 1500),
                            curve: Curves.easeIn,
                            begin: Offset(-1, 0),
                            end: Offset(0, 0),),

                        FadeEffect(
                          duration: Duration(
                              milliseconds: 2000),
                          curve: Curves.easeIn,
                            begin: 0.0,
                            end: 1
                        ),
                        // ScaleEffect(
                        //     delay: 500.ms
                        // )
                      ]*/).fadeIn(
                        delay: 500.ms, duration: 1000.ms,curve: Curves.easeOut
                      ).slideX(
                        begin: -2
                      )// runs after the above w/new duration
                           ,
                      Spacer(),



                      Container(
                        width: 50,
                        height: 50,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: Image.asset(
                          "assets/images/demo_avatar.png",

                        ),
                      )
                          .animate(effects: [
                        FadeEffect(
                          duration: 500.ms
                        ), ScaleEffect(
                          delay: 500.ms
                        )
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text("Hi, Marina",
                                style: graphikRegular(
                                    fontColor: Color(0xFFA5957E),
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 15,
                            ),
                            Text("let’s select your\nperfect place",
                                style: graphikRegular(
                                    fontColor: Color(0xFF232220),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500)) .animate(effects: [
                              FadeEffect(
                                  duration: 1000.ms
                              ),
                              const SlideEffect(
                                duration: Duration(
                                    milliseconds: 1000),
                                curve: Curves.easeIn,
                                begin: Offset(0, 0.5),
                                end: Offset(0, 0),),
                            ]),

                              SizedBox(
                                height: 20,
                              ),

                            Row(
                              children: [
                                Flexible(
                                  child: Container(
                                    width: screenWidth*0.6,
                                    height: screenHeight*0.2,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Color(0XFFFC9E12)),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("BUY",
                                            style: graphikRegular(
                                                fontColor: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        AnimatedBuilder(
                                          animation: animation2,
                                          builder: (context, child) {
                                            return  Text(  animation2.value.toString(),
                                                style: graphikRegular(
                                                    fontColor:  Colors.white,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w700));
                                          },
                                        ),
                                      /*  Text("1 034",
                                            style: graphikRegular(
                                                fontColor: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700)),*/
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Offers",
                                            style: graphikRegular(
                                                fontColor: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ) .animate(effects: [
                                    FadeEffect(
                                        duration: 1000.ms
                                    ), ScaleEffect(
                                        delay: 500.ms
                                    )
                                  ]),
                                ),
                                SizedBox(width: 20,),
                                
                                Flexible(
                                  child: Container(
                                    width: screenWidth*0.6,
                                    height: screenHeight*0.2,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("RENT",
                                            style: graphikRegular(
                                                fontColor: Color(0XFFA5957E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        AnimatedBuilder(
                                          animation: animation,
                                          builder: (context, child) {
                                            return  Text(  animation.value.toString(),
                                                style: graphikRegular(
                                                    fontColor: Color(0XFFA5957E),
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w700));
                                          },
                                        ),

                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Offers",
                                            style: graphikRegular(
                                                fontColor: Color(0XFFA5957E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ).animate(effects: [
                                    FadeEffect(
                                        duration: 1000.ms
                                    ), ScaleEffect(
                                        delay: 500.ms
                                    )
                                  ]),
                                ),
                              ],
                            ),
                              SizedBox(
                                height: 20,
                              ),
                          ],),
                        ),


                      Container(
                        width: screenWidth,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: Get.size.width,
                                  height: 200,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/images/screen_one.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(

                                    right: 20,
                                    left: 20,
                                    bottom: 20,
                                    child: Container(
                                      height: 50,
                                      width: Get.size.width,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Color.fromARGB(219, 166, 166, 164)

                                      ),
                                      child: Row(

                                        children: [
                                          Spacer(),
                                          Center(
                                            child: Text("Gladkova St., 25",
                                                textAlign: TextAlign.center,
                                                style: graphikRegular(
                                                    fontColor: Color(0XFF232220),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                          Spacer(),

                                          Container(
                                            width: 40,
                                            height: 40,

                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.white),
                                            child: SvgPicture.asset(
                                              "assets/icons/arrow_right.svg",
                                              height: 15,
                                              width: 15,
                                            ),
                                          ),
                                          SizedBox(width: 5,)

                                        ],
                                      ),
                                    ).animate().slideX(delay: 1000.ms,
                                        begin: -0.5)
                                )
                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: screenWidth*0.47,
                                      height: screenHeight*0.5,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          color: Colors.white),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/screen_two.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(

                                        right: 8,
                                        left: 8,
                                        bottom: 20,
                                        child: Container(
                                          height: 50,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Color.fromARGB(219, 166, 166, 164)

                                          ),
                                          child: Row(

                                            children: [
                                              SizedBox(width: 15,),
                                              Text("Sedova St., 22",
                                                  textAlign: TextAlign.center,

                                                  style: graphikRegular(
                                                      fontColor: Color(0XFF232220),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500)),
                                              SizedBox(width: 15,),
                                              Container(
                                                width: 40,
                                                height: 40,

                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(25),
                                                    color: Colors.white),
                                                child: SvgPicture.asset(
                                                  "assets/icons/arrow_right.svg",
                                                  height: 15,
                                                  width: 15,
                                                ),
                                              )
                                              /* Flexible(
                                                  child: ,
                                                )*/,
                                              // SizedBox(width: 5,)

                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: screenWidth*0.47,
                                          height: screenHeight*0.25,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              color: Colors.white),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/screen_three.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(

                                            right: 8,
                                            left: 8,
                                            bottom: 20,
                                            child:
                                            Container(
                                              height: 50,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(219, 166, 166, 164)

                                              ),
                                              child: Row(

                                                children: [
                                                  SizedBox(width: 15,),
                                                  Text("Trefoleva St.,43",
                                                      textAlign: TextAlign.center,

                                                      style: graphikRegular(
                                                          fontColor: Color(0XFF232220),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500)),
                                                  SizedBox(width: 10,),
                                                  Flexible(
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,

                                                      padding: EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(25),
                                                          color: Colors.white),
                                                      child: SvgPicture.asset(
                                                        "assets/icons/arrow_right.svg",
                                                        height: 15,
                                                        width: 15,
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: screenWidth*0.47,
                                          height: screenHeight*0.25,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              color: Colors.white),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/screen_four.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(

                                            right: 8,
                                            left: 8,
                                            bottom: 20,
                                            child: Container(
                                              height: 50,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(219, 166, 166, 164)

                                              ),
                                              child: Row(

                                                children: [
                                                  SizedBox(width: 15,),
                                                  Text("Gubina St.,  11 ",
                                                      textAlign: TextAlign.center,

                                                      style: graphikRegular(
                                                          fontColor: Color(0XFF232220),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500)),
                                                  SizedBox(width: 15,),
                                                  Flexible(
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,

                                                      padding: EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(25),
                                                          color: Colors.white),
                                                      child: SvgPicture.asset(
                                                        "assets/icons/arrow_right.svg",
                                                        height: 15,
                                                        width: 15,
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                )

                                /*    Flexible(
                                    child: Container(
                                      width: screenWidth*0.5,
                                      height: screenHeight*0.5,
                                      child:,
                                    ),
                                  ),*/
                              ],
                            ),
                          ],


                        ),
                      ).animate(effects :[
                        SlideEffect(
                          duration: Duration(milliseconds: 1500),
                          curve: Curves.easeIn,
                          begin: Offset(0, 1), // Start from the bottom
                          end: Offset(0, 0),
                        ),
                        FadeEffect(
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeIn,
                        ),
                      ]),
                        SizedBox(height: 100,),
                    ],),
                  ),
                ),


                // Your column children widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
