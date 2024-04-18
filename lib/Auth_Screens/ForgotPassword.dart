

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';

import '../helpers/assets.dart';
import '../helpers/button.dart';
import '../helpers/spacer.dart';
import '../widgets/BgDecoration.dart';
import 'NewPassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
            text: "Forgot",
            textStyle: TextStyle(
              fontSize: 45,
              color: Color(0xff934C93),
              fontWeight: FontWeight.bold,
            ),
            strokeColor: Colors.black,
            strokeWidth: 2,
          ),
          const StrokeText(
            text: "Password",
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
              'if you’ve forgotten your password, don’t worry. Enter your email address below and we’ll help you reset',
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
          textarea(emailController, "youremail@gmail.com"),
          // vertical(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Back to',
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 12,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const StrokeText(
                  text: "Sign in",
                  textStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff934C93),
                      fontWeight: FontWeight.w700),
                  strokeColor: Colors.black,
                  strokeWidth: 0.5,
                ),
              ),
              horizental(80)
            ],
          ),
          vertical(100),
          buttonMain(0.65, "Reset Password",
              bgColor: Color(0xff934C93),
              bColor: Colors.black,
              tColor: Colors.white, () {
            Get.to(() => NewPassword());
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
        obscureText: hint == "Password" ? viewPass : false,
        decoration: InputDecoration(
            suffixIcon: hint == "Password"
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
                : null,
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
