// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:get/get.dart';

class BottomNavaigationBar extends StatefulWidget {
 
   final Function(int) onTap;
  final int currentSelectedIndex;
  const BottomNavaigationBar({
    Key? key,

    required this.onTap,
    required this.currentSelectedIndex,
  }) : super(key: key);

  @override
  State<BottomNavaigationBar> createState() => _BottomNavaigationBarState();
}

class _BottomNavaigationBarState extends State<BottomNavaigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      currentIndex: widget.currentSelectedIndex,
      onTap: (index)=>widget.onTap(index),
      selectedItemColor: Colors.blue.shade800,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      // showSelectedLabels: true,
      elevation: 4,

      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Image.asset(
              ImageAssets.homeicon,
              height: 24,
              width: 24,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.jwstcaptureicon),
            label: 'JWST Capture'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.dviewsicon), label: '3D viewsx'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.gamingicon), label: 'Game'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.newsicon),
            label: 'JWST Misson And News'),
      ],
    );
  }
}
