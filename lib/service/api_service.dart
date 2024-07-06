
import 'package:dio/dio.dart';
import 'package:news_app_bloc/model/news_model.dart';

abstract class Service {
  Dio dio = Dio();
  late Response response;
}

abstract class NewsService extends Service {
  String baseurl = "https://newsapi.org/v2/top-headlines?apiKey=02ccdc04c82a4ab68de9bb2100e1d7bd";

  Future<List<NewsModel>> getAllNewsInCountry(String country);
  // Future<NewsModel> searchInNews(String search);
  // Future<NewsModel> getIncategory(String ctegory);
}

class NewsServiceImp extends NewsService {
  @override
  Future<List<NewsModel>> getAllNewsInCountry(String country) async {
    try {
      response = await dio.get("$baseurl&country=$country");

      if (response.statusCode == 200) {
        List articles = response.data['articles'];
        List<NewsModel> listNewsModel = articles.map((e) => NewsModel.fromMap(e)).toList();
        return listNewsModel;
      } else {
        throw Exception("Failed to load news");
      }
    } catch (e) {
      print('Error: $e');
      throw Exception("Failed to load news");
    }
  }
}
