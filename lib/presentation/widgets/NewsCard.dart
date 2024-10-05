import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String excerpt;
  final String thumbnailUrl;
  final String publishedDate;

  const NewsCard({
    super.key,
    required this.title,
    required this.excerpt,
    required this.thumbnailUrl,
    required this.publishedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(  
      margin: const EdgeInsets.all(10),  
      decoration: BoxDecoration(  
        color: const Color.fromARGB(255, 201, 191, 191),  
        borderRadius: BorderRadius.circular(10),  
        boxShadow: [  
          BoxShadow(  
            color: Colors.grey.withOpacity(0.5),  
            spreadRadius: 1,  
            blurRadius: 5,  
            offset: const Offset(0, 2), // changes position of shadow  
          ),  
        ],  
      ),  
      child: ClipRRect(  
        borderRadius: BorderRadius.circular(10),  
        child: Row(  
          children: <Widget>[  
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(  
                width: 100,  
                height: 100,  
                decoration: BoxDecoration(  
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(  
                    image: thumbnailUrl.isNotEmpty
                        ? NetworkImage(thumbnailUrl)
                        : const AssetImage('assets/images/news.png') as ImageProvider,
                    fit: BoxFit.cover,  
                  ),  
                ),  
              ),
            ),  
            Expanded(  
              child: Padding(  
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 4, right: 10),  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,  
                  mainAxisSize: MainAxisSize.min,  
                  children: [  
                    Text(  
                      title,  
                      style: const TextStyle(  
                        fontWeight: FontWeight.bold,  
                        fontSize: 16,  
                      ),  
                    ),  
                    const SizedBox(height: 4),  
                    Text(  
                      excerpt,  
                      style: const TextStyle(fontSize: 14),  
                      maxLines: 2,  
                      overflow: TextOverflow.ellipsis,  
                    ),  
                    Row(  
                      mainAxisAlignment: MainAxisAlignment.end,  
                      children: [  
                        // TextButton(  
                        //   onPressed: () {  
                        //     // Add your action for "Read more"
                            
                        //   },  
                        //   child: const Text('Read more...', style: TextStyle(color: Colors.blue)),  
                        // ),  
                        Text(  
                          publishedDate,  
                          style: const TextStyle(color: Color.fromARGB(255, 40, 39, 39), fontSize: 12),  
                        ),  
                      ],  
                    ),  
                  ],  
                ),  
              ),  
            ),  
          ],  
        ),  
      ),  
    );
  }
}
