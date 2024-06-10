import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moni_real_estate/controller/tab_host_controller.dart';

import '../../theme/graphikRegular.dart';

class SearchPage extends HookWidget {
   SearchPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    // Get the screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final animationController = useAnimationController(
      duration: Duration(milliseconds: 1500),
    );

    final animation = useMemoized(() {
      return Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );
    }, [animationController]);

    final showNewWidget = useState(false);
    final openLayerOption = useState(false);

    final isMapToolSelected1 = useState(false) ;
    final isMapToolSelected2 = useState(false) ;
    final isMapToolSelected3 = useState(false) ;
    final isMapToolSelected4 = useState(true) ;
    final selectedTool = useState("assets/icons/layers.svg");


    final animationController2 = useAnimationController(
      duration: Duration(milliseconds: 1500),
    );

    final animationD = useAnimation(Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    ));

    final animation2 = useMemoized(() {
      return Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );
    }, [ animationController2]);


    useEffect(() {
      animation.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          showNewWidget.value = true;
        }
      });

      animationController.forward();

      return () => animation.removeStatusListener((status) {
        if (status == AnimationStatus.completed) {
          showNewWidget.value = true;
        }
      });
    }, [animationController,openLayerOption]);




    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0XFF222126),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Color(0xFFFFFFFF),

      ),
      child: Scaffold(body:Stack(children: [
        Container(
          width: Get.size.width,
          height: Get.size.height,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/map_image.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          right: 20,
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: screenWidth * 0.7,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/search_icon.svg",
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("Saint Petersburg",
                          textAlign: TextAlign.center,
                          style: graphikRegular(
                              fontColor: Color(0xFF232220),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    )
                  ],
                )) .animate(effects: [
              FadeEffect(
                  duration: 500.ms
              ), ScaleEffect(
                  delay: 500.ms
              )
            ]),
            Spacer(),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white),
              child: SvgPicture.asset(
                "assets/icons/filter.svg",

              ),
            ).animate(effects: [
              FadeEffect(
                  duration: 500.ms
              ), ScaleEffect(
                  delay: 500.ms
              )
            ]),
          ],
        ),),

        Positioned(
          top:screenHeight* 0.24,
          left: screenWidth* 0.250,
          right: showNewWidget.value?screenWidth*0.66: screenWidth*0.56,
          child:   showNewWidget.value?Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    SvgPicture.asset("assets/icons/map_icon_maker.svg"),
          ):  Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    Text("11mn P",
                style: graphikRegular(
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ).animate(effects: [
            FadeEffect(
                duration: 500.ms
            ), ScaleEffect(
                delay: 500.ms
            )
          ])
          ,),

        Positioned(
          top:screenHeight* 0.34,
          left: screenWidth* 0.350,
          right: showNewWidget.value?screenWidth*0.56: screenWidth*0.46,
          child:   showNewWidget.value?Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    SvgPicture.asset("assets/icons/map_icon_maker.svg"),
          ):  Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    Text("10.63mn Ꝑ",
                style: graphikRegular(
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ).animate(effects: [
            FadeEffect(
                duration: 500.ms
            ), ScaleEffect(
                delay: 500.ms
            )
          ])
          ,),

        Positioned(
          top:screenHeight* 0.54,
          left: screenWidth* 0.250,
          right: showNewWidget.value?screenWidth*0.66: screenWidth*0.56,
          child:   showNewWidget.value?Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    SvgPicture.asset("assets/icons/map_icon_maker.svg"),
          ):  Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    Text("11mn P",
                style: graphikRegular(
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ).animate(effects: [
            FadeEffect(
                duration: 500.ms
            ), ScaleEffect(
                delay: 500.ms
            )
          ])
          ,),

        Positioned(
          top:screenHeight* 0.44,
          left: screenWidth* 0.550,
          right:  screenWidth*0.26,
          child:    Container(

            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Color(0XFFFC9E12)),
            child:    Text("11mn P",
                style: graphikRegular(
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ).animate(effects: [
            FadeEffect(
                duration: 500.ms
            ), ScaleEffect(
                delay: 500.ms
            )
          ])
          ,),
        Positioned(

          left: 20,
          right: 20,
          bottom: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(

                child: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:Color.fromARGB(219, 166, 166, 164)),
                  child: SvgPicture.asset(
                    selectedTool.value,
                    color: Colors.white,

                  ),
                ).animate(effects: [
                  FadeEffect(
                      duration: 500.ms
                  ), ScaleEffect(
                      delay: 500.ms
                  )
                ]),
                onTap: (){
                  openLayerOption.value= true;
                },
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(219, 166, 166, 164)),
                    child: SvgPicture.asset(
                      "assets/icons/compass.svg",

                    ),
                  ).animate(effects: [
                    FadeEffect(
                        duration: 500.ms
                    ), ScaleEffect(
                        delay: 500.ms
                    )
                  ]),
                  Spacer(),
                  Container(

                    height: 50,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(219, 166, 166, 164)),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        SvgPicture.asset(
                          "assets/icons/menu.svg",

                        ),
                        SizedBox(width: 5,),
                        Text("List of variants",
                            textAlign: TextAlign.center,
                            style: graphikRegular(
                                fontColor: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        SizedBox(width: 5,)
                      ],
                    ),
                  ).animate(effects: [
                    FadeEffect(
                        duration: 500.ms
                    ), ScaleEffect(
                        delay: 500.ms
                    )
                  ]),
                ],
              ),
            ],
          ),),

        openLayerOption.value? Positioned(

          left: screenWidth* 0.050,
          right:  screenWidth*0.50,
          bottom: 200,
          child:    ScaleTransition(
            scale: animation2,
            child: Container(

              height: 130,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
              border: Border.all(color:Color(0XFFFC9E12) )),
              child:    Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ToolsItem(label: 'Copy areas', iconPath: 'assets/icons/shield_done.svg', onButtonPressed: (){
                    selectedTool.value ="assets/icons/shield_done.svg";
                    openLayerOption.value= false;
                    isMapToolSelected1.value=true;
                    isMapToolSelected2.value=false;
                    isMapToolSelected3.value=false;
                    isMapToolSelected4.value=false;

                  }, color: isMapToolSelected1.value?Color(0XFFFC9E12):Color(0XFFF232220),),
             /*     Row(

                    children: [
                      SvgPicture.asset(
                        "assets/icons/shield_done.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 5,),
                      Text("Copy areas",
                          style: graphikRegular(
                              fontColor: Color(0XFF232220),
                              fontSize: 14,
                              fontWeight: FontWeight.w400))
                    ],
                  ),*/
                  SizedBox(height: 8,),
                  ToolsItem(label: 'Price', iconPath: 'assets/icons/wallet.svg', onButtonPressed: (){
                    selectedTool.value ="assets/icons/wallet.svg";
                    openLayerOption.value= false;
                    isMapToolSelected1.value=false;
                    isMapToolSelected2.value=true;
                    isMapToolSelected3.value=false;
                    isMapToolSelected4.value=false;
                  }, color: isMapToolSelected2.value?Color(0XFFFC9E12):Color(0XFFF232220),),


                  SizedBox(height: 8,),
                  ToolsItem(label: 'Infrastructure', iconPath: 'assets/icons/infrastruc_icon.svg', onButtonPressed: (){
                    selectedTool.value ="assets/icons/infrastruc_icon.svg";
                    openLayerOption.value= false;
                    isMapToolSelected1.value=false;
                    isMapToolSelected2.value=false;
                    isMapToolSelected3.value=true;
                    isMapToolSelected4.value=false;
                  }, color: isMapToolSelected3.value?Color(0XFFFC9E12):Color(0XFFF232220),),


                  SizedBox(height: 8,),
                  ToolsItem(label: 'Without any layer', iconPath: 'assets/icons/layers.svg', onButtonPressed: (){
                    selectedTool.value ="assets/icons/layers.svg";
                    openLayerOption.value= false;
                    isMapToolSelected1.value=false;
                    isMapToolSelected2.value=false;
                    isMapToolSelected3.value=false;
                    isMapToolSelected4.value=true;
                  }, color: isMapToolSelected4.value?Color(0XFFFC9E12):Color(0XFFF232220),),


                ],
              ),
            ).animate(effects: [
              FadeEffect(
                  duration: 500.ms
              ), ScaleEffect(
                  delay: 500.ms
              )
            ]),
          )
          ,):SizedBox.shrink(),


      ],),),
    );
  }
}


class ToolsItem extends StatelessWidget {

  const ToolsItem({required this.label,  required this.iconPath, required this.color,
    required this.onButtonPressed});

  final String label;
  // final Image? prexIcon;
  final String iconPath;
  final Color color;
  final Function onButtonPressed;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        onButtonPressed();
      },
      child:   Row(

        children: [
          SvgPicture.asset(
            iconPath,
            height: 20,
            width: 20,
            color: color,
          ),
          SizedBox(width: 10,),
          Text(label,
              style: graphikRegular(
                  fontColor: color/*Color(0XFFFC9E12)*/,
                  fontSize: 12,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }



}
