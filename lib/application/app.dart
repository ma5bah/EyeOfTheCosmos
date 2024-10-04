import 'package:eyesofcosmos/application/state_holder_binder.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';
import 'package:eyesofcosmos/presentation/srceens/spalsh_screen.dart';
// import 'package:eyesofcosmos/presentation/srceens/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EyesOfCosmos extends StatefulWidget {
  const EyesOfCosmos({super.key});

  @override
  State<EyesOfCosmos> createState() => _EyesOfCosmosState();
}

class _EyesOfCosmosState extends State<EyesOfCosmos> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: StateHolderBinder(),
      theme: ThemeData(
          primaryColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black, // Customize app bar color
          )),
      home: SpalshScreen(),
    );
  }
}
