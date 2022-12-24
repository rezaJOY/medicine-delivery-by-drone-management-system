// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// import './landingScreen.dart';
// import '../utils/helper.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   Timer _timer;
//
//   @override
//   void initState() {
//     _timer = Timer(Duration(milliseconds: 4000), () {
//       Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: Helper.getScreenWidth(context),
//         height: Helper.getScreenHeight(context),
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               child: Image.asset(
//                 Helper.getAssetName("open.png", "virtual"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: SizedBox(
//                 width: 150,
//                 height: 150,
//                 child: Image.asset(
//                   Helper.getAssetName("drone.png", "virtual"),
//                   fit: BoxFit.scaleDown,
//                 ),
//               ),
//
//             ),
//             Container(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 200.0),
//                 child: Text("Emergency Medicine Delivery by Drone ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.green), ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
