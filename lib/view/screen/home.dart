import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/view/widget/customappbar.dart';
import 'package:ecommercecourse/view/widget/home/customcardhome.dart';
import 'package:ecommercecourse/view/widget/home/customtitlehome.dart';
import 'package:ecommercecourse/view/widget/home/listcategorieshome.dart';
import 'package:ecommercecourse/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomAppBar(
                titleappbar: "Find Product",
                onPressedIcon: () {},
                onPressedSearch: () {},
              ),
              const CustomCardHome(
                  title: "A summer surprize", body: "CashBack 20%"),
              const CustomTitleHome(title: "Categories"),
              const ListCategoriesHome(),
              const CustomTitleHome(title: "Product for you"),
              const ListItemsHome(),
              const CustomTitleHome(title: "Offer"),
              const ListItemsHome(),
            ],
          ),
        ),
      ),
    );
  }
}
