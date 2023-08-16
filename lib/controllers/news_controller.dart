import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:news_app/models/news_model.dart';
import 'package:news_app/repository/local/db_helper.dart';
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
  addArticlesToDB() async{
    List articleListTemp = [];
    NewsModel? data = await fetchAllNews();
    for (Articles element in data!.articles!) {
      articleListTemp.add(element);
    }
    Box box = await DbHelper().addToDB("Articles","articles",articleListTemp);
    articleList = box.get("articles");
    notifyListeners();
  }
  updateArticlesfromDB() async{
    Box box = await DbHelper().openDbBox("Articles");
    articleList = box.get("articles");
    notifyListeners();
  }
}
