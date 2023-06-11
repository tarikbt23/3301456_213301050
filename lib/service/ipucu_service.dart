import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/ipucu_model.dart';

Future<List<Ipucu>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://mocki.io/v1/8748b215-12ce-47b7-9550-4034d3a0cf94'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Ipucu.fromJson(data)).toList();
  } else {
    throw Exception('Beklenmedik bir hata oluştu!');
  }
}