import 'package:doctor_booking_app/model/message_model.dart';
import 'package:doctor_booking_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';


class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              itemCount: chats.length,
               itemBuilder: (BuildContext context,int index){
                final chat= chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(
                   builder:(_) => ChatScreen(user: chat.sender,),
                ),
                ),
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 20.0),
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: chat.unread ? Color(0xffADD8E6): Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  chats[index].sender.name,
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Text(chat.text,
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600 ,
                                      fontSize: 15.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(chat.time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 5.0),
                            chat.unread?
                            Container(
                                width: 40.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                              alignment: Alignment.center,
                              child: Text("NEW",style: TextStyle(fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                              ),
                            )
                            : Text(''),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
               }
          ),
        ),

      ),
    );
  }
}