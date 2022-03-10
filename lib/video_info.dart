import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:training_fitness_videoplayer/home_page.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/video_info.json").then((value){
      info= json.decode(value);
    });
  }
  @override
  void initState(){
    super.initState();
    _initData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  color.AppColor.gradientFirst.withOpacity(0.9),
                  color.AppColor.gradientSecond,
                ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
            )

          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(()=>const HomePage());
                          },
                          child: Icon(Icons.arrow_back_ios, size:20,
                          color:color.AppColor.secondPageIconColor),
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline, size:20,
                            color:color.AppColor.secondPageIconColor)
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Text(
                      "Data Structures & ",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.secondPageTitleColor),
                    ),
                    const SizedBox(height: 7,),
                    Text(
                      "Algorithms",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.secondPageTitleColor),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width:90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.secondPageContainerGradient1stColor,
                                color.AppColor.secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timer,size:20,
                              color: color.AppColor.secondPageIconColor,),
                              const SizedBox(width: 5,),

                              Text(
                                "68 Min",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: color.AppColor.secondPageIconColor,
                                  ),
                              )
                            ],
                          ),


                    ),
                        const SizedBox(width: 20,),
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.secondPageContainerGradient1stColor,
                                  color.AppColor.secondPageContainerGradient2ndColor,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.handyman_outlined,size:20,
                                color: color.AppColor.secondPageIconColor,),
                              const SizedBox(width: 5,),

                              Text(
                                "Graph Theory",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor,
                                ),
                              )
                            ],
                          ),


                        ),
                  ],
                    ),

                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular((70),
                    )
                  ),
                ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          const SizedBox(width: 30,),
                          Text(
                            "Circuit 1: Legs Toning",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.circuitsColor,
                            ),
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              Icon(Icons.loop, size: 30, color: color.AppColor.loopColor),
                              SizedBox(width: 10,),
                              Text(
                                  "3 sets",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: color.AppColor.setsColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20,),
                        ],
                      )

                    ],
                  )
              ))
            ],
          ),

    ));
  }
}
