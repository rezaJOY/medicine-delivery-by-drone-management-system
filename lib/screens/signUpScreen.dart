import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
           width: Helper.getScreenWidth(context),
           height: Helper.getScreenHeight(context),
         child: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
            children: [
              Text(
                "Sign Up",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text(
                "Add your details to sign up",
              ),
              Spacer(),
              CustomTextInput(hintText: "Name"),
              Spacer(),
              CustomTextInput(hintText: "Email"),
              Spacer(),
              CustomTextInput(hintText: "Mobile No"),
              Spacer(),
              CustomTextInput(hintText: "Address"),
              Spacer(),
              CustomTextInput(hintText: "Password"),
              Spacer(),
              CustomTextInput(hintText: "Confirm Password"),
              Spacer(),
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
                  onPressed: () {},
                  child: Text("Sign Up", style: TextStyle(color: Colors.white),),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?"),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: AppColor.green2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
