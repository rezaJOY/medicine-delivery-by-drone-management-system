import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/utils/helper.dart';
import 'package:monkey_app_demo/widgets/customNavBar.dart';
import 'package:monkey_app_demo/widgets/customTextInput.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  height: Helper.getScreenHeight(context),
                  width: Helper.getScreenWidth(context),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Profile",
                                  style: Helper.getTheme(context).headline5,
                                ),
                                Image.asset(
                                  Helper.getAssetName("cart.png", "virtual"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ClipOval(
                            child: Stack(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    Helper.getAssetName(
                                      "user copy.png",
                                      "virtual",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 20,
                                    width: 80,
                                    color: Colors.black.withOpacity(0.3),
                                    child: Image.asset(Helper.getAssetName(
                                        "camera.png", "virtual")),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Image.asset(
                          //       Helper.getAssetName("edit_filled.png", "virtual"),
                          //     ),
                          //     SizedBox(
                          //       width: 5,
                          //     ),
                          //     Text(
                          //       "Edit Profile",
                          //       style: TextStyle(color: AppColor.orange),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hi there Rick!",
                            style: Helper.getTheme(context).headline4.copyWith(
                                  color: AppColor.primary,
                                ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Text("Sign Out"),
                          SizedBox(
                            height: 40,
                          ),
                          CustomFormImput(
                            label: "Name",
                            value: "Rick Shanchaz",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormImput(
                            label: "Email",
                            value: "rickShanchaz@gmail.com",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormImput(
                            label: "Mobile No",
                            value: "01326552359",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormImput(
                            label: "Address",
                            value: "No 27, Road-1, Banasree",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormImput(
                            label: "Password",
                            value: "Emilia Clarke",
                            isPassword: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormImput(
                            label: "Confirm Password",
                            value: "Emilia Clarke",
                            isPassword: true,
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
                              onPressed: () {},
                              child: Text("Save", style: TextStyle(color: Colors.white),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   child: CustomNavBar(
            //     profile: true,
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        profile: true,
      ),
    );
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    Key key,
    String label,
    String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword,
        super(key: key);

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
