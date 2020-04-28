


import 'package:doctor_booking_app/model/speciality.dart';
import 'package:doctor_booking_app/screens/home_screen.dart';
import 'package:doctor_booking_app/views/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/drawer/gf_drawer.dart';
import 'package:getflutter/components/drawer/gf_drawer_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

String selectedCategorie= "Adults";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  int initialIndex = 0;
  String appBarTitle = "";

  final IndexPage indexPage = IndexPage();
  final DoctorsInfo doctorInfo = DoctorsInfo();
  final HomeScreen  homeScreen = HomeScreen();
  Widget showPage = IndexPage();

  Widget _pageChooser(int page){
    switch(page){
      case 0:
        appBarTitle = "Welcome";
        return indexPage;

        break;
      case 1:
        appBarTitle = "";
        return doctorInfo;
        break;
    case 2:
      appBarTitle= "ChatRoom";
    return homeScreen;
    break;
    default:
      return Container(child: Center(child: Text("Page Not Found!!!"),),);
    }
  }




  //List<String> categories = ["Softwares","Management","UI development","Graphic"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.teal,
      resizeToAvoidBottomPadding: false,
      appBar:
        AppBar(
          elevation: 0.0,
          title: Center(child: Text(appBarTitle)) ,
          backgroundColor:Colors.lightBlueAccent ,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.lightBlueAccent,
                  Colors.blueAccent
                ])
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/INP.jpeg'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'InpTech Eyo Ltd',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      'providing solutions',
                      style: TextStyle(
                        color: Colors.white70,fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('Verified', style: TextStyle(color: Colors.white),),

                      ) ,
                    ),
                  ),
                ],
              ),
            ),

            CustomListTitle(Icons.person,"About us",()=>[Navigator.push(context, MaterialPageRoute(
    builder: (context) => DoctorsInfo()
    )),]),
            CustomListTitle(Icons.notifications,"Notification",()=>[]),
            CustomListTitle(Icons.chat_bubble,"Live Chat",()=>[Navigator.push(
                context,MaterialPageRoute(builder: (context)=>HomeScreen()))]),
            CustomListTitle(Icons.live_tv,"Website",()=>[]),

          ],
        ),
      ),

       body: showPage,
      bottomNavigationBar:
      CurvedNavigationBar(
          index: pageIndex,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.verified_user, size: 30,),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
            setState(() {
              print(tappedIndex);
              showPage = _pageChooser(tappedIndex);
            });
        },
      ),

        );

  }
}

class CustomListTitle extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;


  CustomListTitle(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blueAccent.shade400))
        ),
        child: InkWell(
          splashColor: Colors.lightBlueAccent,
          onTap: onTap,

          child: Container(
            height: 50,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(padding: const EdgeInsets.all(5.0)),
                    Text(text, style: TextStyle(fontSize: 14.0),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {


  List<SpecialityModel> specialities;
  int _current= 0;
  List imgList=[
    "assets/INP.jpeg",
    "assets/IMG_0159.JPG",
    "assets/IMG_0161.JPG",
    "assets/IMG_0158.JPG",
    "assets/Copy of BUSINESS - Made with PosterMyWall.jpeg",
    "assets/Copy of BUSINESS letterhead TEMPLATE - Made with PosterMyWall.jpeg",
    "assets/Copy of COMPUTER OR MULTIPURPOSE SALE PRODUCT SALE FLYER TEMPLATE RED - Made with PosterMyWall.jpeg",
    "assets/Copy of White and Green Professional Handyman Ad Squa - Made with PosterMyWall.jpeg",
    "assets/x.jpeg",
    "assets/ty.jpeg",
    "assets/i.jpeg",
    "assets/f.jpeg",
    "assets/fg.JPG",
    "assets/fool.JPG",
    "assets/ui.JPG",
    "assets/IMG_19B44D9DCE25-1.jpeg",
    "assets/Copy of Mobile App Flyer Template - Made with PosterMyWall.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 40.0,),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              CarouselSlider(
                  height: 400.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  reverse: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 2) ,
                  onPageChanged:(index){
                    setState(() {
                      _current=index;
                    });
                  },
                  items: imgList.map((imgUrl){
                    return Builder(
                      builder: (BuildContext context){
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                          ),
                          child: Image.asset(
                            imgUrl,
                            fit: BoxFit.fill,
                          ) ,
                        );
                      },
                    );
                  }).toList()
              )

            ]
        ),
        SizedBox(height: 30.0,),

        Padding(padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
          child:      Text("we are equiped with different kinds of tech cuisine to help grow your business "
              "also the Capablity to push you forward technologically. Learn from the best and "
              " become the best ! ",

              textAlign: TextAlign.justify,
              style: GoogleFonts.slabo27px(textStyle: new TextStyle(fontSize: 18,))),),
        SizedBox(height: 30,),
//           DoctorsTile()
      ],
    );
  }
}


