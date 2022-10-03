// ignore_for_file: depend_on_referenced_packages, unused_import, body_might_complete_normally_nullable, unused_local_variable

import 'package:http/http.dart' as http;
import 'package:templ_online/Posts.dart';

class RemoteService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
