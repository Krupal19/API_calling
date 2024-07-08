/*import 'dart:convert';

List<ApiCalling> apiCallingFromJson(String str) => List<ApiCalling>.from(
      json.decode(str).map(
            (x) => ApiCalling.fromJson(x),
          ),
    );

String ApiCallingToJson(List<ApiCalling> data) => json.encode(
      List<dynamic>.from(
        data.map((x) => x.toJson()),
      ),
    );*/

class ApiCalling {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  ApiCalling({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  ApiCalling.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['albumId'] = albumId;
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['thumbnailUrl'] = thumbnailUrl;
    return data;
  }
}
