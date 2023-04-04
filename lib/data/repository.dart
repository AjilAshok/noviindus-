import 'dart:convert';

import 'package:pra/data/model/bus_managemodel.dart/loginreponse.dart';
import 'package:http/http.dart' as http;
class Repositry {
  Future<LoginResponse> login(username,password) async {
  final url = Uri.parse('http://flutter.noviindus.co.in/api/LoginApi');
  final response = await http.post(url, body: {
    'username': username,
    'password': password,
  });

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    final loginResponse = LoginResponse.fromJson(responseData);
    print(responseData);
    return loginResponse;
    
  } 
  else {
    throw Exception('Failed to log in');
  }
}
}

