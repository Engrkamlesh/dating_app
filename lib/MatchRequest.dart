import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'helpers/assets.dart';
import 'helpers/spacer.dart';
import 'widgets/BgDecoration.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/CustomBottomAppBar.dart';

class MatchRequest extends StatefulWidget {
  const MatchRequest({super.key});

  @override
  State<MatchRequest> createState() => _MatchRequestState();
}

class _MatchRequestState extends State<MatchRequest> {
  TextEditingController searchController = TextEditingController();
  final List<String> imageMatchs = [
    AppImages.image11,
    AppImages.image12,
    AppImages.image13,
    AppImages.image14,
    AppImages.image11,
    AppImages.image12,
    AppImages.image13,
    AppImages.image14,
    AppImages.image11,
    AppImages.image12,
    AppImages.image13,
    AppImages.image14,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Match Request",
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CustomBottomAppBar(
        isActive: true,
      ),
      body: BgDecoration(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                textarea(searchController, "Search Messages"),
                vertical(20),
                Wrap(
                  children: imageMatchs
                      .map((i) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              width: 175.34,
                              height: 260.19,
                              decoration: ShapeDecoration(
                                image: DecorationImage(image: AssetImage(i)),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x3F939393),
                                    blurRadius: 5,
                                    offset: Offset(2, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Clara, 22',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    vertical(10),
                                    Row(
                                      children: [
                                        ImageIcon(
                                          AssetImage(
                                            AppImages.locationIcon,
                                          ),
                                          color: Colors.white,
                                          size: 11.31,
                                        ),
                                        horizental(7),
                                        const Text(
                                          '6 Km',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 45.25,
                                          height: 45.25,
                                          decoration: const ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F939393),
                                                blurRadius: 5,
                                                offset: Offset(0, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.close_rounded,
                                            color: Color(0xffACACAC),
                                            size: 27.8,
                                          ),
                                        ),
                                        Container(
                                          width: 45.25,
                                          height: 45.25,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFF934C93),
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F939393),
                                                blurRadius: 5,
                                                offset: Offset(0, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: ImageIcon(
                                              AssetImage(AppImages.loveIcon),
                                              color: const Color(0xFFFFFFFF),
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget textarea(TextEditingController controller, String hint) {
    return SizedBox(
      width: Get.width,
      height: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    // viewPass = !viewPass;
                  });
                },
                icon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xffACACAC),
                )),
            contentPadding: const EdgeInsets.only(left: 20),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  const BorderSide(color: Color(0xffACACAC), width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  const BorderSide(color: Color(0xffACACAC), width: 1.0),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
                color: Color(0xFFA3A3A3), fontFamily: "Futura", fontSize: 14)),
      ),
    );
  }
}
