import 'package:flutter/material.dart';

import '../../core/dependency_injection/global.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/shared_keys.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = preferences.getString(SharedKeys.userName) ?? " ";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Hi, $userName",
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          color: AppColors.grayShade100,
          child: const Column(
            children: [],
          )),
    );
  }
}
