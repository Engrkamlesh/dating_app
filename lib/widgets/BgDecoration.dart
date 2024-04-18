import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/assets.dart';

// ignore: must_be_immutable
class BgDecoration extends StatelessWidget {
  Widget body;

  BgDecoration({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.bgImage), fit: BoxFit.fill),
      ),
      child: body,
    );
  }
}
