import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:flutter/material.dart';

class Newscard extends StatefulWidget {
  const Newscard({super.key});

  @override
  State<Newscard> createState() => _NewscardState();
}

class _NewscardState extends State<Newscard> {
  @override
  Widget build(BuildContext context) {
    return Container(  
      margin: EdgeInsets.all(10),  
      decoration: BoxDecoration(  
        color: Colors.white,  
        borderRadius: BorderRadius.circular(10),  
        boxShadow: [  
          BoxShadow(  
            color: Colors.grey.withOpacity(0.5),  
            spreadRadius: 1,  
            blurRadius: 5,  
            offset: Offset(0, 2), // changes position of shadow  
          ),  
        ],  
      ),  
      child: ClipRRect(  
        borderRadius: BorderRadius.circular(10),  
        child: Row(  
          children: <Widget>[  
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(  
                width: 100,  
                height: 100,  
                decoration: BoxDecoration(  
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(  
                    
                    image: AssetImage('assets/images/news.png'), // Placeholder image  
                    fit: BoxFit.cover,  
                  ),  
                ),  
              ),
            ),  
            Expanded(  
              child: Padding(  
                padding: EdgeInsets.only(top: 8, left: 8, bottom: 4,right: 10),  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,  
                  mainAxisSize: MainAxisSize.min,  
                  children: [  
                    Text(  
                      'Space Goes to expansion:',  
                      style: TextStyle(  
                        fontWeight: FontWeight.bold,  
                        fontSize: 16,  
                      ),  
                    ),  
                    SizedBox(height: 4),  
                    Text(  
                      'Researchers from the University of All Knowing have discovered a new way to bread',  
                      style: TextStyle(fontSize: 14),  
                      maxLines: 2,  
                      overflow: TextOverflow.ellipsis,  
                    ),  
                      
                    Row(  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                      children: [  
                        TextButton(  
                          onPressed: () {  
                            // Add your action for read more  
                          },  
                          child: Text('Read more..', style: TextStyle(color: Colors.blue)),  
                        ),  
                        Text(  
                          'Thur 09 2022',  
                          style: TextStyle(color: Colors.grey, fontSize: 12),  
                        ),  
                      ],  
                    ),  
                  ],  
                ),  
              ),  
            ),  
            // Padding(  
            //   padding: EdgeInsets.symmetric(horizontal: 10),  
            //   child: Icon(Icons.bookmark_border, color: Colors.grey),  
            // ),  
          ],  
        ),  
      ),  
    );
  }
}