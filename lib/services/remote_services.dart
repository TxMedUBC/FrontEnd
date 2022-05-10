import 'package:http/http.dart' as http;
import '../models/post.dart';

class RemoteService {
  Future<PostData?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('http://127.0.0.1:5000/getTemperature');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return returnFromJson(json);
    }
  }
}