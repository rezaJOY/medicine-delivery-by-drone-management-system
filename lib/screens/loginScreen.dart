import 'package:flutter/material.dart';
import 'package:monkey_app_demo/screens/forgetPwScreen.dart';
import 'package:monkey_app_demo/screens/introScreen.dart';

import '../const/colors.dart';
import '../screens/forgetPwScreen.dart';
import '../screens/signUpScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Helper.getTheme(context).headline5,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text('Add your details to login'),
                // ),
               SizedBox(height: 80),
                CustomTextInput(
                  hintText: "Your number",
                ),
                SizedBox(height: 40),
                CustomTextInput(
                  hintText: "password",
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green),
                      foregroundColor:
                      MaterialStateProperty.all(AppColor.green2),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(
                          side:
                          BorderSide(color: AppColor.green2, width: 1.5),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> IntroScreen()));
                    },
                    child: Text("Login",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ForgetPwScreen.routeName);
                    },
                    child: Text("Forget your password?"),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                // Text("or Login With"),
                // Spacer(),
                // SizedBox(
                //   height: 50,
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(
                //         Color(
                //           0xFF367FC0,
                //         ),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Image.asset(
                //           Helper.getAssetName(
                //             "fb.png",
                //             "virtual",
                //           ),
                //         ),
                //         SizedBox(
                //           width: 30,
                //         ),
                //         Text("Login with Facebook")
                //       ],
                //     ),
                //   ),
                // ),
                // Spacer(),
                // SizedBox(
                //   height: 50,
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(
                //         Color(
                //           0xFFDD4B39,
                //         ),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Image.asset(
                //           Helper.getAssetName(
                //             "google.png",
                //             "virtual",
                //           ),
                //         ),
                //         SizedBox(
                //           width: 30,
                //         ),
                //         Text("Login with Google")
                //       ],
                //     ),
                //   ),
                // ),

                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.green2,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
