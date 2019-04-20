import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://imediasen.litetekno.tk";

class APICAT {
  final int category;
  APICAT(this.category);
  static Future fetchDataCat() {
    var url = baseUrl + "/wp-json/wp/v2/posts?categories=$category&_embed";
    // return http.get(url,headers: {"Accept": "application/json"});
    return http.get(url);
  }
}
