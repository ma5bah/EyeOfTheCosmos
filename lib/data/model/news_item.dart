class NewsItem {
  final int id;
  final int requestingId;
  final String postType;
  final String title;
  final List<dynamic> customFields;
  final String excerpt;
  final String permalink;
  final String publishedDate;
  final String readTime;
  final ThumbnailImg? thumbnailImg;

  NewsItem({
    required this.id,
    required this.requestingId,
    required this.postType,
    required this.title,
    required this.customFields,
    required this.excerpt,
    required this.permalink,
    required this.publishedDate,
    required this.readTime,
    this.thumbnailImg,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      id: json['id'] as int,
      requestingId: json['requestingId'] as int,
      postType: json['postType'] as String,
      title: json['title'] as String,
      customFields: json['customFields'] as List<dynamic>,
      excerpt: json['excerpt'] as String? ?? '',
      permalink: json['permalink'] as String? ?? '',
      publishedDate: json['publishedDate'] as String? ?? '',
      readTime: json['readTime'] as String? ?? '',
      thumbnailImg: json['thumbnailImg'] != null
          ? ThumbnailImg.fromJson(json['thumbnailImg'] as Map<String, dynamic>)
          : null,
    );
  }

  

  // Method to convert a NewsItem instance to a JSON (Map)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'requestingId': requestingId,
      'postType': postType,
      'title': title,
      'customFields': customFields,
      'excerpt': excerpt,
      'permalink': permalink,
      'publishedDate': publishedDate,
      'readTime': readTime,
      'thumbnailImg': thumbnailImg,
    };
  }
}


class ThumbnailImg {
  final int? id;
  final String? url;
  final String? alt;
  final String? caption;
  final String? credits;
  final String? fit;
  final int? zoom;
  final FocalPoint? focalPoint;
  final String? parallax;
  final String? detailLink;
  final String? contentType;
  final int? width;
  final int? height;

  ThumbnailImg({
    this.id,
    this.url,
    this.alt,
    this.caption,
    this.credits,
    this.fit,
    this.zoom,
    this.focalPoint,
    this.parallax,
    this.detailLink,
    this.contentType,
    this.width,
    this.height,
  });

  factory ThumbnailImg.fromJson(Map<String, dynamic> json) {
    return ThumbnailImg(
      id: json['id'] as int?,
      url: json['url'] as String?,
      alt: json['alt'] as String?,
      caption: json['caption'] as String?,
      credits: json['credits'] as String?,
      fit: json['fit'] as String?,
      zoom: json['zoom'] as int?,
      focalPoint: json['focalPoint'] != null
          ? FocalPoint.fromJson(json['focalPoint'] as Map<String, dynamic>)
          : null,
      parallax: json['parallax'] as String?,
      detailLink: json['detail_link'] as String?,
      contentType: json['contentType'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}
class FocalPoint {
  final double x;
  final double y;

  FocalPoint({required this.x, required this.y});

  factory FocalPoint.fromJson(Map<String, dynamic> json) {
    return FocalPoint(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );
  }
}
