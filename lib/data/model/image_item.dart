class ImageData {
  final String id;
  final String title;
  final String detailsUrl;
  final String downloadUrl;
  final String imageSize;
  final String releaseDate;
  final String caption;
  final List<String> keywords;

  ImageData({
    required this.id,
    required this.title,
    required this.detailsUrl,
    required this.downloadUrl,
    required this.imageSize,
    required this.releaseDate,
    required this.caption,
    required this.keywords,
  });

  // Factory method to create an instance from a JSON map
  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      id: json['id'] as String,
      title: json['title'] as String,
      detailsUrl: json['details_url'] as String,
      downloadUrl: json['download_url'] as String,
      imageSize: json['image_size'] as String,
      releaseDate: json['release_date'] as String,
      caption: json['caption'] as String,
      keywords: List<String>.from(json['keywords'] as List<dynamic>),
    );
  }

  // Method to convert the instance back to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'details_url': detailsUrl,
      'download_url': downloadUrl,
      'image_size': imageSize,
      'release_date': releaseDate,
      'caption': caption,
      'keywords': keywords,
    };
  }
}
