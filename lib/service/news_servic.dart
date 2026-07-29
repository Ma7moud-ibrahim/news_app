import 'package:dio/dio.dart';
import 'package:news_app/module/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticalModel>> getTopHeadlines({required String category}) async {
    // Response response = await == var but i write this i will miss write the await
    try {
      final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=7f40c76d3be54dc3921fe35a37ddde24&country=us&category=$category',
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
