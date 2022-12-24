import 'package:flutter/material.dart';
import 'package:monkey_app_demo/screens/authenticate.dart';

import '../const/colors.dart';


class TrackOrder extends StatefulWidget {

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  List<Color> color =[Colors.green, Colors.green, Colors.blue, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Text("Track order", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, left: 30, top: 20, bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Estimated Time -", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                Text("7 minutes", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Number -", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                Text(" #A2C2Z2 ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                    //divider
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    ),

                    // set an icon or image
                    // set your search bar setting
                  ],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF7BB972),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(Icons.reorder_rounded, color: Colors.white,),

                            ),
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                          ]
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all( 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 4, color: Color(0xFF7BB972))),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,

                              ),
                            ],
                          ),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Order confirmed", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Text("Your order is Confirmed, and being prepared.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                                ]
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF7BB972),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(Icons.done_outline, color: Colors.white,),

                            ),
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                          ]
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all( 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 4, color: Color(0xFF7BB972))),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,

                              ),
                            ],
                          ),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Ready to takeoff", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Text("Your parcel is being attached to the Drone Zipline", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                                ]
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF7BB972),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(Icons.airplanemode_on_outlined, color: Colors.white,),

                            ),
                            Container(
                              width: 2,
                              height: 50,
                              color: Colors.black,

                            ),
                          ]
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all( 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 4, color: Color(0xFF7BB972))),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,

                              ),
                            ],
                          ),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Drone took off", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Text("Our drone is on its way to deliver your parcel", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                                ]
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Container(
                              width: 2,
                              // height: 2,
                              color: Colors.black,

                            ),
                            // Container(
                            //   margin: EdgeInsets.only(left: 10, right: 5),
                            //   padding: EdgeInsets.all(10),
                            //   decoration: BoxDecoration(
                            //       color: Color(0xFF7BB972),
                            //       borderRadius: BorderRadius.circular(50)
                            //   ),
                            //   child: Icon(Icons.home, color: Colors.white,),
                            //
                            // ),
                            // Container(
                            //   width: 2,
                            //   height: 50,
                            //   color: Colors.black,
                            //
                            // ),
                          ]
                      ),
                      // Expanded(
                      //   child: Container(
                      //     margin: EdgeInsets.all( 10),
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       border: Border(top: BorderSide(width: 4, color: Color(0xFF7BB972))),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.black.withOpacity(0.3),
                      //           blurRadius: 10,
                      //
                      //         ),
                      //       ],
                      //     ),
                      //     height: 100,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: <Widget>[
                      //             Text("Medicine Arrived", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      //             Text("Smile your on camera from our drone please verify your OTP now, Drone will release the zipline after verification", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                      //           ]
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                //divider
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 180,
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
                            BorderSide(color: AppColor.green2, width: 1),
                          ),
                        ),
                      ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> AuthenticateUser()));
                      },
                      child: Text("Authenticate by OTP", style: TextStyle(color: Colors.white),),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),


    );

  }
}
