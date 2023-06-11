import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/kitap_model.dart';

Future<Kitap> fetchKitap() async {
  final response = await http.get(
    Uri.parse('https://api.collectapi.com/book/newBook'),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader:
      'apikey 70ztWZJxzbabVCx120jtCr:5d5HbtPGGB7GA93C2Chp5r',
    },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Kitap.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Yüklemede hata oluştu');
  }
}