import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/functions/handlingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat);
}

class HomeControllerImp extends HomeController {
  HomeData homedata = HomeData(Get.find());
  MyServices myServices = Get.find();
  String? id;
  String? username;
  String? phone;

  // List data = [];
  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    id = myServices.sharedPreferences.getString("id");
    username = myServices.sharedPreferences.getString("username");
    phone = myServices.sharedPreferences.getString("phone");
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homedata.getData();
    print("=========== Home Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat) {
    Get.toNamed(AppRoute.items, arguments: {
      'categories': categories,
      'selectedcat': selectedCat,
    });
  }
}
