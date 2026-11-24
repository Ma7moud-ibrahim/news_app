import 'package:dio/dio.dart';
import 'package:news_app/module/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  static const String _apiKey = String.fromEnvironment('NEWS_API_KEY');

  Future<List<ArticalModel>> getTopHeadlines({required String category}) async {
    // Response response = await == var but i write this i will miss write the await
    try {
      final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=$_apiKey&country=us&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<ArticalModel> articalList = [];
      jsonData['articles'].forEach((element) {
        ArticalModel articalModel = ArticalModel.fromJson(element);
        articalList.add(articalModel);
      });
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
