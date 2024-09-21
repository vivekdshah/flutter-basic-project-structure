import 'package:get/get.dart';

mixin AppStateMixin {
  RxBool isLoading = false.obs;
  RxBool isOtherLoading = false.obs;
  RxString isError = "".obs;
  RxString popupError = "".obs;
}


