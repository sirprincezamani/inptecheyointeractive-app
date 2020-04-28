
import 'package:doctor_booking_app/model/message_model.dart';
import 'package:doctor_booking_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';


class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding:  EdgeInsets.symmetric(vertical:10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("Favorite Contact",style: TextStyle(
                color: Colors.blueGrey,fontSize: 18,fontWeight: FontWeight.bold,
              letterSpacing: 1.0,),),
              IconButton(icon: Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey ,
                  onPressed: null)
            ],),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int Index){
                  return GestureDetector(
                    onTap: () => Navigator.push(context,
                      MaterialPageRoute(
                        builder:(_) => ChatScreen(user: favorites[Index],),
                      ),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(favorites[Index].imageUrl ) ,
                          ),
                          Text(favorites[Index].name,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
        ],
      ),
    );
  }
}
