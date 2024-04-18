import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'helpers/assets.dart';
import 'helpers/spacer.dart';
import 'widgets/BgDecoration.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/CustomBottomAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final List<String> imageUrls = [
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
  ];
  final List<String> imageUrl = [
    AppImages.image7,
    AppImages.image8,
    AppImages.image7,
    AppImages.image8,
  ];
  final List<String> imgUrl = [
    AppImages.image10,
    AppImages.image9,
    AppImages.image10,
    AppImages.image9,
    AppImages.image10,
    AppImages.image9,
    AppImages.image10,
    AppImages.image9,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home",),
      extendBodyBehindAppBar: true,
      bottomNavigationBar:  CustomBottomAppBar(isHome: true,),
      body: BgDecoration(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textarea(searchController, "Search Messages"),
                vertical(20),
                Row(
                  children: [
                    const Text(
                      'New Matches',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 14,
                        // fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFF934C93),
                            fontSize: 12,
                            // fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        horizental(10),
                        const Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xFF934C93),
                        )
                      ],
                    )
                  ],
                ),
                vertical(10),
                SizedBox(
                  width: Get.width,
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                              child:
                                  Image(image: AssetImage(imageUrls[index]))),
                        ),
                      );
                    },
                  ),
                ),
                vertical(20),
                const Text(
                  textAlign: TextAlign.start,
                  'Near You',
                  style: TextStyle(
                    color: Color(0xFF421421),
                    fontSize: 16,
                    // fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                vertical(20),
                SizedBox(
                  width: Get.width,
                  height: 210.61,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrl.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 280.82,
                            height: 210.61,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(imageUrl[index]))),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 77.88,
                                      height: 35.10,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '0.5 km',
                                          style: TextStyle(
                                            color: Color(0xFFC4C4C4),
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Sahara Ardia Fadia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  vertical(10),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Nurse, Friendly',
                                      style: TextStyle(
                                        color: Colors.white
                                            .withOpacity(0.800000011920929),
                                        fontSize: 12,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  vertical(10),
                                ],
                              ),
                            ),
                          ),
                          horizental(10)
                        ],
                      );
                    },
                  ),
                ),
                vertical(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Partner',
                      style: TextStyle(
                        color: Color(0xFF421421),
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                vertical(10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: imgUrl.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: 96.53,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x07333333),
                                blurRadius: 54,
                                offset: Offset(10, 24),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(imgUrl[index]),
                                  height: 62,
                                ),
                                horizental(20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Natasya Valentina',
                                      style: TextStyle(
                                        color: Color(0xFF421421),
                                        fontSize: 14,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    vertical(10),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xffC4C4C4),
                                        ),
                                        horizental(5),
                                        const Text(
                                          'Sekarwangi, Cibadak',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Image(
                                  image: AssetImage(AppImages.heartgrey),
                                  height: 26.33,
                                ),
                              ],
                            ),
                          ),
                        ),
                        vertical(10)
                      ],
                    );
                  },
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
