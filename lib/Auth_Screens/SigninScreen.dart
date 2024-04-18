import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';

import '../HomeScreen.dart';
import '../helpers/assets.dart';
import '../helpers/button.dart';
import '../helpers/spacer.dart';
import '../widgets/BgDecoration.dart';
import 'ForgotPassword.dart';
import 'SignupScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            text: "Sign in",
            textStyle: TextStyle(
                fontSize: 45,
                color: Color(0xff934C93),
                fontWeight: FontWeight.bold),
            strokeColor: Colors.black,
            strokeWidth: 2,
          ),
          vertical(5),
          const Text(
            'Please login to continue using our app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA3A3A3),
              fontSize: 14,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w400,
            ),
          ),
          vertical(50),
          textarea(emailController, "Your Email"),
          vertical(10),
          textarea(passController, "Password"),
          vertical(10),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Get.to(() => const ForgotPassword());
                },
                child: const StrokeText(
                  text: "Forgot Password",
                  textStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff934C93),
                      fontWeight: FontWeight.bold),
                  strokeColor: Colors.black,
                  strokeWidth: 0.5,
                ),
              ),
            ),
          ),
          vertical(100),
          buttonMain(0.65, "Sign in",
              bgColor: const Color(0xff934C93),
              bColor: Colors.black,
              tColor: Colors.white, () {
            Get.to(() => HomeScreen());
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have an account',
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 14,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const StrokeText(
                  text: "? Sign Up",
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff934C93),
                      fontWeight: FontWeight.w400),
                  strokeColor: Colors.black,
                  strokeWidth: 1,
                ),
              )
            ],
          )
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
