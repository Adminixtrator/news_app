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
    source = json['source'] as NewsSource;
    title = json['title'] as String;
    url = json['url'] as String;
    description = json['description'] as String;
    author = json['author'] as String;
    content = json['content'] as String;
    publishedAt = json['publishedAt'] as String;
    urlToImage = json['urlToImage'] as String;
  }
}

class NewsSource {
  String? id;
  String? name;

  NewsSource({this.id, required this.name});

  NewsSource.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    name = json['name'] as String;
  }
}