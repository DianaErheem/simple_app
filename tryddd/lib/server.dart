import 'dart:convert';
import 'package:http/http.dart' as http;

class MyApiService {
  static const String _baseUrl = 'https://myapi.com';

  Future<Map<String, dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('$_baseUrl/myEndpoint'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data from API');
    }
  }
}
