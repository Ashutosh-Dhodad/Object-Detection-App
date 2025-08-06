import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  // Replace this with your actual deployed URL
  static const String baseUrl = 'http://10.120.115.151:5000';

  static Future<List<Map<String, dynamic>>> sendImageForDetection(File imageFile) async {
    final uri = Uri.parse('$baseUrl/predict');

    try {
      final request = http.MultipartRequest('POST', uri)
        ..files.add(await http.MultipartFile.fromPath('file', imageFile.path));

      final streamedResponse = await request.send();
      log("-----------------"+imageFile.path);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final List decoded = jsonDecode(response.body);
        return decoded.cast<Map<String, dynamic>>();
      } else {
        print('API Error: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error sending image: $e');
      return [];
    }
  }
}
