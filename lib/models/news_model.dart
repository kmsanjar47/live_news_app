import 'package:hive/hive.dart';

class NewsModel {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsModel({this.status, this.totalResults, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NewsModelAdapter extends TypeAdapter<NewsModel> {
  @override
  int get typeId => 0;

  @override
  NewsModel read(BinaryReader reader) {
    String? status = reader.read();
    int? totalResults = reader.read();
    List<Articles>? articles = reader.read();
    return NewsModel(status: status, totalResults: totalResults);
  }

  @override
  void write(BinaryWriter writer, NewsModel obj) {
    writer.write(obj.status);
    writer.write(obj.totalResults);
    writer.write(obj.articles);
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  Articles.fromJson(Map<String, dynamic> json) {
    source =
        json['source'] != null ? new Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }
}

class ArticlesAdapter extends TypeAdapter<Articles> {
  @override
  int get typeId => 1;

  @override
  Articles read(BinaryReader reader) {
    Source? source = reader.read();
    String? author = reader.read();
    String? title = reader.read();
    String? description = reader.read();
    String? url = reader.read();
    String? urlToImage = reader.read();
    String? publishedAt = reader.read();
    String? content = reader.read();
    return Articles(
        source: source,
        author: author,
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content);
  }

  @override
  void write(BinaryWriter writer, Articles obj) {
    writer.write(obj.source);
    writer.write(obj.author);
    writer.write(obj.title);
    writer.write(obj.description);
    writer.write(obj.url);
    writer.write(obj.urlToImage);
    writer.write(obj.publishedAt);
    writer.write(obj.content);
  }
}

class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class SourceAdapter extends TypeAdapter<Source> {
  @override
  int get typeId => 2;

  @override
  Source read(BinaryReader reader) {
    String? id = reader.read();
    String? name = reader.read();
    return Source(id: id,name: name);
  }

  @override
  void write(BinaryWriter writer, Source obj) {
    writer.write(obj.id);
    writer.write(obj.name);

  }
}
