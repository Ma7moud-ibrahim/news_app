class ArticalModel {
  final String title;
  final String description;
  final String urlToImage;
  final String content;
  final String sourceName;

  ArticalModel({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.content,
    required this.sourceName,
  });

  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      title: json['title'] ?? 'No Title',
      description: json['description'] ?? 'No Description',
      urlToImage: json['urlToImage'] ?? 'https://via.placeholder.com/150',
      content: json['content'] ?? 'No Content',
      sourceName: json['source']?['name'] ?? 'Unknown Source',
    );
  }
}
