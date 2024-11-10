import 'package:advanced_ecommerce/core/resources/manager_assets.dart';
import 'package:advanced_ecommerce/core/resources/manager_width.dart';
import 'package:advanced_ecommerce/features/splash/presentaion/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              width: ManagerWidth.w380,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  ManagerAssets.splash1,
                ),
              )),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  ManagerAssets.splash2,
                ),
              )),
            ),
          ],
        ),
      );
    });
  }
}
