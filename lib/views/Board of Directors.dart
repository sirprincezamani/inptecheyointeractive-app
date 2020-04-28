
import 'package:flutter/material.dart';

class Directors extends StatefulWidget {
  @override
  _DirectorsState createState() => _DirectorsState();
}

class _DirectorsState extends State<Directors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 100.0,),
              Container(
                   child: Wrap(
                  children: <Widget>[
                    SizedBox(height: 200.0,),
                    Container(
                      height: 290.0,
                      decoration: BoxDecoration(image: DecorationImage
                        (image: AssetImage("assets/zam.jpeg"))
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(100.0,0.0,30.0,0.0),
                       child: Column(

                         children: <Widget>[
                           SizedBox(height: 20.0,),
                           Text("Mr.Israel Nsemoh",style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 23.0,),),


                         ],
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                      child: Text("(CEO INPTECH EYO LIMITED)",style: TextStyle(fontWeight: FontWeight.w600,
                        fontSize: 14.0,),),
                    ),
                    SizedBox(height: 100.0,),
                    Container(
                      
                      height: 290.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage
                        (image: AssetImage("assets/zam.jpeg"))
                      ),
                    ),
                    Center(child: Text("data",style: TextStyle(fontWeight: FontWeight.w600,
                        fontSize: 23.0),)),
                    Container(
                      height: 290.0,
                      decoration: BoxDecoration(image: DecorationImage
                        (image: AssetImage("assets/INP.jpeg",))

                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
