// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:eyesofcosmos/data/model/news_item.dart';
import 'package:http/http.dart' as http;

/// Fetches the total number of news items available from the API.
Future<int> getTotalNewsNumber() async {
  const String newsApiUrl =
      "https://smd-cms.nasa.gov/wp-json/smd/v1/content-list/?"
      "requesting_id=51303&post_types=post,press-release&categories=2881"
      "&internal_terms&mission_status&mission_type&mission_target&mission_programs"
      "&news_tags&meta_fields=%7B%7D&exclude_child_pages=false&order=DESC"
      "&orderby=date&science_only=false&number_of_items=1&layout=list"
      "&listing_page_category_id=0&paged=1";

  final url = Uri.parse(newsApiUrl);
  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw Exception(
        "Failed to fetch total news number: ${response.reasonPhrase}");
  }

  final Map<String, dynamic> data = jsonDecode(response.body);
  if (data['value'] == null || data['value']['pagination'] == null) {
    throw Exception(
        "Invalid response structure when fetching total news number");
  }

  final int totalItems =
      data['value']['pagination']['found_posts'] as int? ?? 0;
  return totalItems;
}

/// Builds the API URL for a specific page number.
String buildApiUrl(int pageNumber) {
  const String newsApiUrl =
      "https://smd-cms.nasa.gov/wp-json/smd/v1/content-list/?"
      "requesting_id=51303&post_types=post,press-release&categories=2881"
      "&internal_terms&mission_status&mission_type&mission_target&mission_programs"
      "&news_tags&meta_fields=%7B%7D&exclude_child_pages=false&order=DESC"
      "&orderby=date&science_only=false&number_of_items=20&layout=list"
      "&listing_page_category_id=0";

  return "$newsApiUrl&paged=$pageNumber";
}

/// Fetches news data for a specific page.
/// Returns a Map containing the response data.
Future<Map<String, dynamic>> _fetchNewsPage(int pageNumber) async {
  final url = Uri.parse(buildApiUrl(pageNumber));
  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw Exception(
        "Failed to fetch page $pageNumber: ${response.reasonPhrase}");
  }

  var json = jsonDecode(response.body);

  if (json['value'] == null || json['value']['items'] == null) {
    throw Exception("Invalid response structure: ${response.body}");
  }

  return json;
}

/// Fetches a single page of news items.
/// Returns a list of NewsItem objects.
Future<List<NewsItem>> fetchSingleNewsPage(int pageNumber) async {
  try {
    // Fetch the data for the given page
    final data = await _fetchNewsPage(pageNumber);

    // Treat 'items' as a List of dynamic objects
    final List<dynamic> items = data['value']['items'];
    print('Total items: ${items.length}');
    
    for (var item in items) {
      print('Item type: ${item.runtimeType}');
      print('Item content: $item');
      print(item['customFields']);
    }

    var retItems = items
        .map((item) {
          try {
            return NewsItem.fromJson(item as Map<String, dynamic>);
          } catch (e) {
            print("Error in parsing item: $item");
            print("Error details: $e");
            return null;
          }
        })
        .where((element) => element != null)
        .toList();
        
    return retItems.cast<NewsItem>();
  } catch (error) {
    print("Error fetching single news page: $error");
    return []; // Return an empty list in case of error
  }
}
