import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class RssFeedController extends GetxController {
  var rssData = [].obs;

  Future<List<dynamic>> xmlToJson(String rssUrl) async {
    List<dynamic> data = [];
    final xmlData = Xml2Json();
    try {
      final http.Response response = await http.get(Uri.parse(rssUrl));
      if (response.statusCode == 200) {
        xmlData.parse(response.body);
        var json = xmlData.toGData();
        data = jsonDecode(json)["rss"]["channel"]["item"];
      } else {
        print("Filed to load data, Status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error: $error");
    }
    return rssData.value = data;
  }
}
