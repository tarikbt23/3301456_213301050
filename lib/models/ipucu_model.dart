import 'dart:convert';

List<Ipucu> albumsFromJson(String str) =>
    List<Ipucu>.from(json.decode(str).map((x) => Ipucu.fromJson(x)));

String albumsToJson(List<Ipucu> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ipucu {
  String? body;

  Ipucu({this.body});

  Ipucu.fromJson(Map<String, dynamic> json) {
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['body'] = this.body;
    return data;
  }
}