class AppLink {
  static const String server = "http://192.168.43.194/ecommerce_php";

  static const String imagestatic =
      "http://192.168.43.194/ecommerce_php/upload";
  //================== Start Image ============= //
  static const String imageCategories = "$imagestatic/categories";
  static const String imagesItems = "$imagestatic/items";
  //================== End Image ============= //

  //================ Start Test =============//
  static const String test = "$server/test.php";
  //================ End Test =============//

  //==================== Start Auth ===================//
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verifycode.php";
  //==================== End Auth ===================//

  //==================== Start ForgetPassword ===================//
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  //==================== End ForgetPassword ===================//

  //====================== Home Start ==================//
  static const String homepage = "$server/home.php";
  //====================== Home End ==================//
}
