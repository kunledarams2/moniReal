import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/graphikRegular.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Profile Page",
              textAlign: TextAlign.center,
              style: graphikRegular(
                  fontColor: Color(0xFF232220),
                  fontSize: 20,
                  fontWeight: FontWeight.w600)).animate(effects: [
            const SlideEffect(
                duration: Duration(milliseconds: 900),
                curve: Curves.easeIn,
                begin: Offset(0, -1),
                end: Offset(0, 0)),
          ]),
        )
      ],
    ),),);
  }
}
