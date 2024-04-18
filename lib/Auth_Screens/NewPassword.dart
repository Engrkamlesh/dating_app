import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';

import '../helpers/assets.dart';
import '../helpers/button.dart';
import '../helpers/spacer.dart';
import '../widgets/BgDecoration.dart';
import 'SigninScreen.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  bool viewPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgDecoration(
          body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          vertical(100),
          Image(
            image: AssetImage(AppImages.logo),
            height: Get.height * 0.15,
          ),
          vertical(50),
          const StrokeText(
            text: "Create",
            textStyle: TextStyle(
              fontSize: 45,
              color: Color(0xff934C93),
              fontWeight: FontWeight.bold,
            ),
            strokeColor: Colors.black,
            strokeWidth: 2,
          ),
          const StrokeText(
            text: "New Password",
            textStyle: TextStyle(
                fontSize: 45,
                color: Color(0xff934C93),
                fontWeight: FontWeight.bold,
                height: 0.9),
            strokeColor: Colors.black,
            strokeWidth: 2,
          ),
          vertical(5),
          SizedBox(
            width: Get.width * 0.8,
            child: const Text(
              'Please create a new password for your account. Your password must be different from your previous one.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA3A3A3),
                fontSize: 14,
                fontFamily: 'Futura',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          vertical(50),
          textarea(passController, "New Password"),
          vertical(10),
          textarea(passController, "Confirm your Password"),
          // vertical(5),
          // TextButton(
          //   onPressed: () {},
          //   child: const StrokeText(
          //     text: "Sign in",
          //     textStyle: TextStyle(
          //         fontSize: 12,
          //         color: Color(0xff934C93),
          //         fontWeight: FontWeight.w700),
          //     strokeColor: Colors.black,
          //     strokeWidth: 0.5,
          //   ),
          // ),
          vertical(100),
          buttonMain(0.65, "Change Password",
              bgColor: Color(0xff934C93),
              bColor: Colors.black,
              tColor: Colors.white, () {
            Get.to(() => SignInScreen());
          }),
        ],
      )),
    );
  }

  Widget textarea(TextEditingController controller, String hint) {
    return SizedBox(
      width: Get.width * 0.65,
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: hint == "New Password"
            ? viewPass
            : false || hint == "Confirm your Password"
                ? viewPass
                : false,
        decoration: InputDecoration(
            suffixIcon: hint == "New Password"
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        viewPass = !viewPass;
                      });
                    },
                    icon: ImageIcon(
                      viewPass
                          ? AssetImage(AppImages.openedeye)
                          : AssetImage(AppImages.closedeye),
                    ))
                : IconButton(
                    onPressed: () {
                      setState(() {
                        viewPass = !viewPass;
                      });
                    },
                    icon: ImageIcon(
                      viewPass
                          ? AssetImage(AppImages.openedeye)
                          : AssetImage(AppImages.closedeye),
                    )),
            contentPadding: const EdgeInsets.only(left: 20),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide:
                  const BorderSide(color: Color(0xff934C93), width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide:
                  const BorderSide(color: Color(0xff934C93), width: 1.0),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
                color: Color(0xFFA3A3A3), fontFamily: "Futura", fontSize: 14)),
      ),
    );
  }
}
