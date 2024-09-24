// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';



class GameScreenLandingCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const GameScreenLandingCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  
      width: MediaQuery.of(context).size.width*0.85,   
      height: 150,  
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.circular(10),  
        image: DecorationImage(  
          image: AssetImage(imageUrl), // Replace with your asset image  
          fit: BoxFit.cover,  
        ),  
      ),  
      child: Stack(  
        children: <Widget>[  
         
          Positioned(  
            left: 20,  
            bottom: 20,  
            child: Row(  
              children: <Widget>[  
                Text(  
                  '${title}',  
                  style: TextStyle(  
                    color: Colors.white,  
                    fontSize: 32,  
                    fontWeight: FontWeight.bold,  
                  ),  
                ),  
                SizedBox(width: 10), // Space between text and icon  
                Icon(  
                  Icons.arrow_forward,  
                  color: Colors.white,  
                  size: 43,  
                ),  
              ],  
            ),  
          ),  
        ],  
      ),  
    );  
  }
}
