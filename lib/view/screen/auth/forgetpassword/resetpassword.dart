import 'package:ecommercecourse/controller/forgetpassword/resetpassword_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/validinput.dart';
import 'package:ecommercecourse/view/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroundcolor,
        title: Text(
          "Reset Password",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const CustomTextTitleAuth(text: "New Password"),
                  const SizedBox(height: 10),
                  const CustomTextBodyAuth(text: "Please Enter New Password"),
                  const SizedBox(height: 15),
                  CustomTextFormAuth(
                    obscureText: true,
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 3, 30, "password");
                    },
                    myController: controller.password,
                    hintText: "Enter New Password",
                    labelText: "Password",
                    iconData: Icons.lock_outline,
                  ),
                  CustomTextFormAuth(
                    obscureText: true,
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 3, 30, "password");
                    },
                    myController: controller.repassword,
                    hintText: "Re Enter New Password",
                    labelText: "Repeat Password",
                    iconData: Icons.lock_outline,
                  ),
                  CustomButtonAuth(
                    text: "Save",
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    },
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
