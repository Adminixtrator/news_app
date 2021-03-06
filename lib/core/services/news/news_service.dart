import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/utils/utils.dart';

abstract class NewsService {
  static String? baseUrl = dotenv.env['BASEURL'];
  static String? apiKey = dotenv.env['APIKEY'];

  static String query = '';

  static Future<http.Response> fetchNews() async {
    http.Response response = await http.get(Uri.parse(
        '$baseUrl/everything?q=$query&from=${Utils.yesterday}&sortBy=publishedAt&apiKey=$apiKey'),
        headers: {
          'Connection': 'keep-alive',
        }
    ).catchError((e) {
      throw Exception(e);
    });

    return response;
  }
}