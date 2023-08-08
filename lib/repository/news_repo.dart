import 'package:dio/dio.dart';
import 'package:news_app/repository/credentials.dart';

class NewsRepository {
  Future<Response> fetchApiResponse() async {
    final dio = Dio();
    Response response = await dio.get(
        "https://newsapi.org/v2/everything?apiKey=$API_KEY&q=bangladesh");
    return response;
  }
}
