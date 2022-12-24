import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/screens/homeScreen.dart';
import 'package:monkey_app_demo/utils/helper.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/introScreen";

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "2.png",
      "title": "Find Medicine You Need",
      "desc":
          "Discover the best medicine and fast delivery to your doorstep by drone"
    },
    {
      "image": "1.png",
      "title": "Fast Delivery",
      "desc": "Fast Medicine delivery to your home, office wherever you are"
    },
    {
      "image": "3.png",
      "title": "Live Tracking",
      "desc":
          "Real time tracking of your medicine on the app once you placed the order"
    },
  ];

  @override
  void initState() {
    _controller = new PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(Helper.getAssetName(
                          _pages[index]["image"], "virtual"));
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 0 ? AppColor.green2 : AppColor.placeholder,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 1 ? AppColor.green2 : AppColor.placeholder,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 2 ? AppColor.green2 : AppColor.placeholder,
                    )
                  ],
                ),
                Spacer(),
                Text(
                  _pages[count]["title"],
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  _pages[count]["desc"],
                  textAlign: TextAlign.center,
                ),
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
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: Text("Next",style: TextStyle(color: Colors.white),)),
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
