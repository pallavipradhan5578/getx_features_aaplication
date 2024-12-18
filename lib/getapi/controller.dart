import 'package:get/get.dart';
import 'package:statemanagementgetx/getapi/appurl.dart';
import 'package:statemanagementgetx/getapi/model.dart';



class UserController extends GetxController {
  var isLoading = true.obs; // Observable for loading state
  var userList = <User>[].obs; // Observable for user list

  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var users = await apiService.fetchUsers();
      userList.assignAll(users); // Update the observable list
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
