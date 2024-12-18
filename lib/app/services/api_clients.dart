import 'dart:developer';

import 'package:bd_calling/app/data/models/network_response.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<NetworkResponse> getRequest(String url, {String? token}) async {
    try {
      log(url);
      log(token.toString());

      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token'
        },
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            jsonResponse: response.body);
      } else {
        return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode,
            message: "Error: ${response.reasonPhrase}");
      }
    } catch (e) {
      log('Error: $e');
      return NetworkResponse(
        isSuccess: false,
        message: 'Exception: $e',
      );
    }
  }
}
