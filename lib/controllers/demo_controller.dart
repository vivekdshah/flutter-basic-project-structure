import 'package:get/get.dart';
import '../api_services/app_state_class.dart';
import '../api_services/app_state_mixin.dart';
import '../api_services/dio_network_call.dart';
import '../models/dio_api_model.dart';

class ExportController extends GetxController with AppStateMixin implements AppStateClass {

  @override
  getAllData() async {
    isLoading(true);
    try {
      DioResponseAPI responseAPI = await ApiManager.get(methodName: "");
      if (responseAPI.code == 200) {}
    } catch (error) {
      isError(error.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  insertData(Map<String, dynamic> map) async {
    isOtherLoading(true);
    try {
      DioResponseAPI responseAPI = await ApiManager.post(methodName: "", params: map);
      if (responseAPI.code == 200) {}
    } catch (error) {
      popupError(error.toString());
    } finally {
      isOtherLoading(false);
    }
  }

  @override
  updateData(Map<String, dynamic> map) async {
    isOtherLoading(true);
    try {
      DioResponseAPI responseAPI = await ApiManager.post(methodName: "", params: map);
      if (responseAPI.code == 200) {}
    } catch (error) {
      popupError(error.toString());
    } finally {
      isOtherLoading(false);
    }
  }

  @override
  viewData(id) async {
    isOtherLoading(true);
    try {
      DioResponseAPI responseAPI = await ApiManager.get(
        methodName: "",
      );
      if (responseAPI.code == 200) {}
    } catch (error) {
      popupError(error.toString());
    } finally {
      isOtherLoading(false);
    }
  }
}
