

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:moni_real_estate/ui/tabs/chat_page.dart';
import 'package:moni_real_estate/ui/tabs/contact_page.dart';
import 'package:moni_real_estate/ui/tabs/favourite_page.dart';
import 'package:moni_real_estate/ui/tabs/search_page.dart';

import '../model/TabHostModel.dart';

import '../theme/app_theme.dart';
import '../theme/graphikRegular.dart';
import '../ui/tabs/home_page.dart';

class TabHostController  extends GetxController with GetTickerProviderStateMixin {

  late TabController tabController;
  Rx<int> selectedTabIndex = 0.obs;
  List<Widget> tabList = [];
  RxBool showBottomTab = true.obs;




  @override
  void onInit() {

    super.onInit();

    tabController = TabController( initialIndex: selectedTabIndex.value,
        length: tabList.length, vsync: this, animationDuration: Duration.zero);
    tabController.addListener(() {
      selectedTabIndex.value = tabController.index;
    });
    if(selectedTabIndex.value == 2){
      showBottomTab.value = false;
    }
  }

  // RxBool to track whether loading is in progress
  RxBool isLoading = false.obs;

  Rx<TabHostModel> selectedTab = TabHostModel(page:  HomePage(), selectedIconUrl: 'assets/icons/home_icon.svg', unselectedIconUrl: 'assets/icons/more_icon.svg', tabName: 'Home').obs;


 /* TabHostModel _selectedDashBoardTab=TabHostModel(page:  HomePage()
      , selectedIconUrl: 'assets/icons/home_icon.svg', unselectedIconUrl: 'assets/icons/more_icon.svg', tabName: 'Home');
  TabHostModel get selectedDashBoardTab => _selectedDashBoardTab;
  set selectedDashBoardTab(TabHostModel dashBoardTabModel) {
    _selectedDashBoardTab = dashBoardTabModel;
    // notifyListeners();
  }*/


  List<TabHostModel>dashBoardTabsData=[

    TabHostModel(page:   SearchPage()
    , tabName: "Search",selectedIconUrl: 'assets/icons/search.svg', unselectedIconUrl: 'assets/icons/search.svg'),
    TabHostModel(page:  const ChatPage()
        , tabName: "Send",selectedIconUrl: 'assets/icons/chat.svg', unselectedIconUrl: 'assets/icons/chat.svg'),
    TabHostModel(page:  HomePage()
        , tabName: "Home", selectedIconUrl: 'assets/icons/home.svg', unselectedIconUrl: 'assets/icons/home.svg'),
    TabHostModel(page: const FavouritePage()
        ,  tabName: "Support",selectedIconUrl: 'assets/icons/heart.svg', unselectedIconUrl: 'assets/icons/heart.svg'),

    TabHostModel(page:  ContactPage()
        ,  tabName: "More",selectedIconUrl: 'assets/icons/profile.svg', unselectedIconUrl: 'assets/icons/profile.svg'),
  ].obs;

}