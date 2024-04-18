import 'package:flutter/material.dart';

import '../helpers/assets.dart';
import '../helpers/spacer.dart';
import '../helpers/text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? leading;
  final String? title;
  final bool? appbaricons;
  CustomAppBar({super.key, this.leading, this.title, this.appbaricons});

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xffACACAC),
                    size: 25,
                  ),
                  const Spacer(),
                  horizental(20),
                  boldtext(const Color(0xffACACAC), 16, "$title"),
                  const Spacer(),
                  ImageIcon(
                    AssetImage(AppImages.notificationIcon),
                    size: 25,
                    color: const Color(0xffFDB813),
                  ),
                  horizental(10),
                  ImageIcon(
                    AssetImage(AppImages.filterIcon),
                    size: 20,
                    color: const Color(0xffFDB813),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
