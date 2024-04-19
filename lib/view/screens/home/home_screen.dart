import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task6_4/view_model/utils/app_assets.dart';
import 'package:task6_4/view_model/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 25),
                  width: size.width * .75,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFFF0F1FA))),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Dogecoin to the Moon...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.pink,
                  child: Center(
                    child: ImageIcon(
                      AssetImage(AppAssets.bell),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
