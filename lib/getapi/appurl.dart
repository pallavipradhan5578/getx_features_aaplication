import 'package:get/get.dart';
import 'package:statemanagementgetx/getapi/model.dart';

class ApiService extends GetConnect {
  Future<List<User>> fetchUsers() async {
    final response = await get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200) {
      // Parse the response body
      List<dynamic> data = response.body;
      return data.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
