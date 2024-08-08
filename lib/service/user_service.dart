import 'package:dio/dio.dart';
import 'package:user_connect/model/user_model.dart';

class UserService {
  Dio dio = Dio();

  Future<List<UserModel>> fetchUserData() async {
    const String url = 'https://jsonplaceholder.typicode.com/users';
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((user) => UserModel.fromJson(user)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Failed to fetch user data: $e');
    }
  }
}
