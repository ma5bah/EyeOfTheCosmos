import 'package:flutter/material.dart';

class ExploreItem {  
  String title;  
  String imageUrl;  
  VoidCallback onTap;  
  
  ExploreItem({required this.title, required this.imageUrl, required this.onTap});  
}  
List<ExploreItem> exploreItems = [  
  ExploreItem(  
    title: '3D Universe',  
    imageUrl: 'assets/images/toptrends/image1.png',  
    onTap: () {},  
  ),  
  ExploreItem(  
    title: 'JWST Missions',  
    imageUrl: 'assets/images/toptrends/image2.png',  
    onTap: () {},  
  ),  
  ExploreItem(  
    title: 'JWST Captures',  
    imageUrl: 'assets/images/toptrends/image3.png',  
    onTap: () {},  
  ),  
  ExploreItem(  
    title: 'Own Telescope',  
    imageUrl: 'assets/images/toptrends/image4.png',  
    onTap: () {},  
  ),  
  ExploreItem(  
    title: 'Universe Magic',  
    imageUrl: 'assets/images/toptrends/image5.png',  
    onTap: () {},  
  ),  
];  
