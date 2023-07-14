import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShelfController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt activeTabIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      activeTabIndex.value = tabController.index;
    });

    // Cek jika activeTabIndex bernilai 1 (Rent) saat halaman ShelfView dibuka, animasikan perpindahan ke tab dengan indeks 1 (Rent)
    if (activeTabIndex.value == 1) {
      tabController.animateTo(1);
    }
  }

  void chngeIndex() {
    tabController.addListener(() {
      activeTabIndex.value = 1;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
