// ignore_for_file: public_member_api_docs, sort_constructors_first

class NewsModel {
  String title;
  String? description;
  String? urlToImage;
  String? content;
  String? author;
  NewsModel({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.content,
    required this.author,
  });

  NewsModel copyWith({
    String? title,
    String? description,
    String? urlToImage,
    String? content,
    String? author,
  }) {
    return NewsModel(
      title: title ?? this.title,
      description: description ?? this.description,
      urlToImage: urlToImage ?? this.urlToImage,
      content: content ?? this.content,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'urlToImage': urlToImage,
      'content': content,
      'author': author,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      title: map['title'] ?? '',
      description: map['description'] ?? "",
      urlToImage: map['urlToImage'] ?? "",
      content: map['content'] ?? '',
      author: map['author'] ?? '',
    );
  }
}
