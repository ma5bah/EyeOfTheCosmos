import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: <Widget>[
              
              Container(  
              height: MediaQuery.of(context).size.height * 0.3, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),// 30% of the screen height  
              width: double.infinity,  
              child: Image.asset(  
                'assets/images/news.png',  
                fit: BoxFit.contain, // Ensures the image covers the container without distorting aspect ratio  
              ),  
            ),  // Placeholder for an image at the bottom  
            Container(  
              padding: EdgeInsets.all(16),  
              child: Text(  
                'Space goes to expansion',  
                style: TextStyle(  
                  fontWeight: FontWeight.bold,  
                  fontSize: 24,  
                  color: Colors.white,  
                ),  
              ),  
              color: Colors.black,  
            ),  
            Padding(  
              padding: const EdgeInsets.all(16.0),  
              child: Text(  
                'Industrialization refers to the transformation of economies from primarily agricultural activities to those based on the manufacturing of goods. This shift significantly altered global economies, leading to greater productivity, technological advancements, and a rise in consumerism. The process of industrialization began during the 18th century in Great Britain, a period commonly referred to as the Industrial Revolution. This revolution spread across the world, causing a profound shift in how societies produced goods and conducted business. The key feature of industrialization was the introduction of new machinery and production techniques that increased efficiency, allowing products to be manufactured on a much larger scale than before. Technological Advancements and Economic Shift The industrial revolution was defined by the application of new technologies to manufacturing processes. For example, the introduction of steam feature of industrialization was the introduction of new machinery and production techniques that increased efficiency, allowing products to be mak',  
                style: TextStyle(  
                  fontSize: 16,  
                  color: Colors.white,  
                ),  
              ),  
            ),  
          ],  
        ),  
      ),  
    );
  }
}