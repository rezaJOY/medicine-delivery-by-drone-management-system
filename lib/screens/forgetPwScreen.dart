import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import './sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Please enter your number to receive a link to create a new password via number",
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                CustomTextInput(hintText: "number"),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
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
                      Navigator.of(context)
                          .pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: Text("Send", style: TextStyle(color: Colors.white),),
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
