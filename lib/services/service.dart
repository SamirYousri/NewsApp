import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articalesModel.dart';

class serviceNews {
  final Dio dio;

  serviceNews(this.dio);
  Future<List<ArticalesModel>> getNews({required String category}) async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=be604d33bb984a4c89f1e4413796a8da&country=jp&category=$category',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> artical = jsonData['articles'];

    List<ArticalesModel> articalList = [];
    for (var articalLoop in artical) {
      ArticalesModel articalesModelObj = ArticalesModel.jsonFrom(articalLoop);
      articalList.add(articalesModelObj);
    }
    return articalList;
  }
}
