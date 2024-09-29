class ImageData {
  final String id;
  final String title;
  final String detailsUrl;
  List<DownloadUrls> downloadUrls;
  final String releaseDate;
  final String caption;
  final List<String> keywords;

  ImageData({
    required this.id,
    required this.title,
    required this.detailsUrl,
    required this.downloadUrls,
    required this.releaseDate,
    required this.caption,
    required this.keywords,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    var downloadUrl = json['download_url'] as String; // Single download URL
    var imageSize = json['image_size'] as String; // Single image size

    // Create a single DownloadUrls instance
    List<DownloadUrls> downloadUrls = [
      DownloadUrls(url: downloadUrl, size: imageSize)
    ];

    return ImageData(
      id: json['id'] as String,
      title: json['title'] as String,
      detailsUrl: json['details_url'] as String,
      downloadUrls: downloadUrls, // List with single DownloadUrls
      releaseDate: json['release_date'] as String,
      caption: json['caption'] as String,
      keywords: List<String>.from(json['keywords'] as List<dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'details_url': detailsUrl,
      'download_urls': downloadUrls.map((url) => url.toJson()).toList(),
      'release_date': releaseDate,
      'caption': caption,
      'keywords': keywords,
    };
  }
}

class DownloadUrls {
  final String url;
  final String size;

  DownloadUrls({
    required this.url,
    required this.size,
  });

  factory DownloadUrls.fromJson(Map<String, dynamic> json) {
    return DownloadUrls(
      url: json['url'] as String,
      size: json['size'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'size': size,
    };
  }
}
