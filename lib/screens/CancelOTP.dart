import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/screens/homeScreen.dart';

import '../utils/helper.dart';

class CancelOYP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text("Your OTP is not matched", style: TextStyle(
                  color: Colors.red,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                Helper.getAssetName("cancel.png", "virtual"),
              ),

              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text("Drone is flying back to its drone Station\n \nHelpline: 02992929122", style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18
                ),),
              ),
              SizedBox(
                height: 30,
                width: 200,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                  child: Text("Back to home", style: TextStyle(color: Colors.white),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
