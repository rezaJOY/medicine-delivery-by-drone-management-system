import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/utils/helper.dart';
import 'package:monkey_app_demo/widgets/customNavBar.dart';

class OfferScreen extends StatelessWidget {
  static const routeName = "/offerScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: Helper.getScreenHeight(context),
                width: Helper.getScreenWidth(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Latest Offers",
                              style: Helper.getTheme(context).headline5,
                            ),
                            Image.asset(
                              Helper.getAssetName("cart.png", "virtual"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [Text("Find discounts, Offer special")],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: Helper.getScreenWidth(context) * 0.4,
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
                                  onPressed: () {}, child: Text("Check Offers",style: TextStyle(color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("boxx.png", "virtual"),
                          fit: BoxFit.cover,
                        ),
                        name: "Medical Box",
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("tube.png", "virtual"),
                          fit: BoxFit.cover,
                        ),
                        name: "Tube",
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("boxx.png", "virtual"),
                          fit: BoxFit.cover,
                        ),
                        name: "Medical Box",
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              offer: true,
            ),
          )
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key key,
    String name,
    Image image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  _name,
                  style: Helper.getTheme(context)
                      .headline4
                      .copyWith(color: AppColor.primary),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset(
                  Helper.getAssetName("star_filled.png", "virtual"),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "3.9",
                  style: TextStyle(
                    color: AppColor.orange,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("(14 ratings) LAB"),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColor.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(" For Human"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
