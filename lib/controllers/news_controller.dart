import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/models/news_model.dart';
import 'package:news_app/repository/news_repo.dart';

class NewsController extends ChangeNotifier {
  List<Articles>? articleList;


  Future<NewsModel>? fetchAllNews() async {
    Response response = await NewsRepository()
        .fetchApiResponse();
    // print(response.data);
    NewsModel? data = NewsModel.fromJson(response.data);
    return data;

  }
  fetchArticles() async{
    List<Articles> articleListTemp = [];
    NewsModel? data = await fetchAllNews();
    for (Articles element in data!.articles!) {
      articleListTemp.add(element);
    }
    articleList = articleListTemp;
    print(articleList);
    notifyListeners();

  }
}
