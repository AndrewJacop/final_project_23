import 'package:av_test/screens/00_logo_screen.dart';
import 'package:av_test/screens/01_loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Easy_app extends StatelessWidget {
  const Easy_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;
    final bodyHeight=screenHeight-MediaQuery.of(context).padding.top-MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              // height: 1000,
              //width: 2000,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(0, 0),
                    colors: [
                      Color(0xFFfba867),
                      //Color(0xFFff8a65),
                      Color(0xFFc5cae9),
                      // Color(0xFFfba867),
                      Color(0xFF7986cb),
                      Color(0xFFc5cae9),
                    ]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: bodyHeight*.03,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight*.03,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100.r,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/doctor.jpg',
                      ),
                      radius: 95.r,
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight*.08,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: bodyHeight*.53,
                // width: 1200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30).w,
                        topRight: Radius.circular(30)).w,
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /* Text(
                          ("Choose"),
                          style: TextStyle(fontSize: 60),
                        ),
                        SizedBox(
                          height: 10,
                        ),*/

                      Text(
                        "Easy Appointments",
                        style: TextStyle(
                            color: Color(0xFF00174d),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10).w,
                        child: Text(
                          "A program that provides you with the appropiate appointment for you and what you have booked . if you need to book an appointment.",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LogoScreen(),));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00174d),
                            padding: EdgeInsets.symmetric(
                                horizontal: 55.h, vertical: 17.w),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20).w,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
