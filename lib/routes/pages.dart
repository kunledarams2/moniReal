

import 'package:get/get.dart';
import 'package:moni_real_estate/routes/routes.dart';

import '../core/core_binding.dart';
import '../ui/tab_host_page.dart';

class Pages{

  static final List<GetPage> routes = <GetPage>[


    GetPage(name: Routes.tabHostPage,
        page: ()=>TabHostPage(),
        binding: CoreBinding()
    ),

   /* GetPage(name: Routes.loginPage,
        page: ()=>LoginPage(),
        // binding: CoreBinding()
    ),

    GetPage(name: Routes.securityPage,
        page: ()=>Security(),
        // binding: CoreBinding()
    )*/


  ];
}