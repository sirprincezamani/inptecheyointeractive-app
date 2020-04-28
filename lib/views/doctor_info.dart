import 'dart:ui';

import 'package:flutter/material.dart';

class DoctorsInfo extends StatefulWidget {
  @override
  _DoctorsInfoState createState() => _DoctorsInfoState();
}

class _DoctorsInfoState extends State<DoctorsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black87
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            //  Center(child: Image.asset("assets/INP.jpeg", height: 10.0, width: 200.0,),),
              SizedBox(
                height: 5,
              ),
              Text(
                "About",
                style: TextStyle(fontSize: 22,fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 16,
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 16,
                children: <Widget>[
                  Text(
                    "INP-TECH-EYO was founded in 2015 by two brothers with great passion to solve technological trauma of this generation, with adequate skills in programming and ICT consultancy such as web designs, Mobile Application(IOS & Android) Access Control  development/Database Recovery and Backup, Field Monitoring Apps as well as SEO Digital marketing and U.I. Graphics, with the sales of Technological Devices.   "
                        "The company has proven to be reliable and satisfactory to its client’s home and abroad.Our company was the brain behind the technicality and design of GMA-Ikeja Electricity Monitoring app.\n "
                        "The dynasty of Authentic E-commerce Website, and we also have contracts with Mind wares, W3 Travels, Women of Grace Ministry in London, Impression Films TV Abuja, Bomarah Group Lagos Etc.We are equipped with varieties of Super Tech Savvy in providing technological solutions to companies, individuals, and other businesses with many years of experience. We are updated with recent technological vises in making businesses grow through recent and updated way of marketing; we go the extra mile in solving and making your business stand out with remarkable results.OUR MISSION. Is to connect service providers in various areas of human needs to their prospective customers or clients.OUR VISION. Is to be known for quality, timely and innovative service delivery. Our team is committed to providing solutions which put our clients first in their area of specialization.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey, fontSize: 16),

                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset("assets/mappin.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    " No:32 Associaton Avenue,llupeju-Lagos.Light House Plaza 1st Floor ",
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset("assets/clock.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Work Hours",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    '''Monday - Friday
Open till 7 Pm''',
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/map.png",
                    width: 180,
                  )
                ],
              ),
              Text(
                "Activity",
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffFBB97C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xffFCCA9B),
                              borderRadius: BorderRadius.circular(16)
                            ),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 130,
                            child: Text(
                              "List Of Schedule",
                              style: TextStyle(color: Colors.white,
                              fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffA5A5A5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffBBBBBB),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 130,
                            child: Text(
                              "Doctor's Daily Post",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  String imgAssetPath;
  Color backColor;

  IconTile({this.imgAssetPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          imgAssetPath,
          width: 20,
          height: 34,
        ),
      ),
    );
  }
}
