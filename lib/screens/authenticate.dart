import 'package:flutter/material.dart';
import 'package:monkey_app_demo/screens/sentOTPScreen.dart';
import 'package:monkey_app_demo/screens/trackorderfinal.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import 'newPwScreen.dart';


class AuthenticateUser extends StatelessWidget {
  // const AuthenticateUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We have sent you an OTP to your Mobile',
                  style: Helper.getTheme(context).headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please check your mobile number Authenticate and Get your Parcel",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OTPInput(),
                    OTPInput(),
                    OTPInput(),
                    OTPInput(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackOrderFinal()));
                    },
                    child: Text("Authenticate", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't Recieve? "),
                    Text(
                      "Click Here",
                      style: TextStyle(
                        color: AppColor.green2,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )

    );
  }
}
