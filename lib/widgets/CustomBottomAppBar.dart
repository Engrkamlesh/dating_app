import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../HomeScreen.dart';
import '../MatchRequest.dart';
import '../helpers/assets.dart';

// ignore: must_be_immutable
class CustomBottomAppBar extends StatefulWidget {
  bool? isActive = false;
  bool? isHome = false;
  CustomBottomAppBar({super.key, this.isActive, this.isHome});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  // var pages = [
  //   const HomeScreen(),
  //   Container(),
  //   Container(),
  //   const Cart(),
  //   const MyAccount(),
  // ].obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      height: Get.height * 0.08,
      width: Get.width,
      child: BottomAppBar(
          color: Colors.transparent,
          height: Get.height * 0.08,
          shape: CircularNotchedRectangle(),
          shadowColor: Colors.white,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => HomeScreen());
                  },
                  child: widget.isHome == true
                      ? ImageIcon(
                          AssetImage(AppImages.homeActive),
                          color: Color(0xFF934C93),
                          size: 30,
                        )
                      : ImageIcon(
                          AssetImage(AppImages.homeIcon),
                          color: Color(0xFFACACAC),
                          size: 30,
                        ),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(()=>StartChatwithSupport());
                  },
                  child: ImageIcon(
                    AssetImage(AppImages.chatIcon),
                    color: Color(0xFFACACAC),
                    size: 30,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => MatchRequest());
                  },
                  child: widget.isActive == true
                      ? ImageIcon(
                          AssetImage(AppImages.loveIconActive),
                          color: Color(0xFF934C93),
                          size: 30,
                        )
                      : ImageIcon(
                          AssetImage(AppImages.loveIcon),
                          color: Color(0xFFACACAC),
                          size: 30,
                        ),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(()=>MyAccount());
                  },
                  child: ImageIcon(
                    AssetImage(AppImages.profileIcon),
                    color: Color(0xFFACACAC),
                    size: 30,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
