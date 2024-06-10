import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni_real_estate/core/core_binding.dart';
import 'package:moni_real_estate/routes/pages.dart';
import 'package:moni_real_estate/routes/routes.dart';
import 'package:moni_real_estate/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      title: 'MoniEstate',
      debugShowCheckedModeBanner: false,


      theme: AppTheme().themeData,
      initialRoute: Routes.tabHostPage,
      getPages: Pages.routes,
      initialBinding: CoreBinding(),


    );
  }
}


