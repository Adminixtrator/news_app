import 'package:news_app/ui/news/news.dart';

class NewsModel {
  NewsSource? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  NewsModel({
    this.source,
    this.title,
    this.url,
    this.description,
    this.author,
    this.content,
    this.publishedAt,
    this.urlToImage
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    source = NewsSource.fromJson(json['source']);
    title = json['title'].toString();
    url = json['url'].toString();
    description = json['description'].toString();
    author = json['author'].toString();
    content = json['content'].toString();
    publishedAt = json['publishedAt'].toString();
    urlToImage = json['urlToImage'].toString();
  }
}

class NewsSource {
  String? id;
  String? name;

  NewsSource({this.id, required this.name});

  NewsSource.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
  }
}