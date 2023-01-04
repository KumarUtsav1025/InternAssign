import 'package:flutter/material.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Box1
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: C.colorContainer1,
                      boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 15.0,
                          spreadRadius: 2.0,
                          blurStyle: BlurStyle.normal
                      ),]
                  ),
                  width: width*0.9,
                  height: height*0.165,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(height*0.015),
                      decoration: const BoxDecoration(
                      color: C.colorContainer2,
                      ),
                      width: 160,
                      height: height*0.05,
                      ),
                      SizedBox(height: height*0.005,),
                      Container(
                        margin: EdgeInsets.all(height*0.015),
                        decoration: const BoxDecoration(
                          color: C.colorContainer3,
                        ),
                        width: width*0.85,
                        height: height*0.05,
                      ),
                    ],
                  ),
                ),
              ),

              //Space
              SizedBox(height: height*0.1,),

              //Box2
              Container(
                height: height*0.3,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: height*0.038,),
                          Container(
                            decoration: const BoxDecoration(
                                color: C.colorContainer1,
                                boxShadow: [BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 15.0,
                                    spreadRadius: 2.0,
                                    blurStyle: BlurStyle.normal
                                ),]
                            ),
                            width: width*0.9,
                            height: height*0.165,
                            child: Column(
                              children: [
                                SizedBox(height: height*0.08,),
                                Container(
                                  margin: EdgeInsets.all(height*0.015),
                                  decoration: const BoxDecoration(
                                    color: C.colorContainer3,
                                  ),
                                  width: width*0.85,
                                  height: height*0.05,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: C.colorContainer2,
                        ),
                        width: 160,
                        height: height*0.05,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}