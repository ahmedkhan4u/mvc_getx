import 'package:http/http.dart' as http;
import 'package:mvc_getx/model/post_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<PostModel>?> getPosts() async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      return postModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
