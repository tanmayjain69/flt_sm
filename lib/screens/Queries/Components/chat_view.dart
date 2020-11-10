import 'package:fltsm/screens/Queries/Model/chat.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {

    List<QueryChat> chats = [
    QueryChat(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        details: "Consequatur nihil aliquid omnis consequatur."
      )
  ];
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            color: Colors.white
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: chats.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(chats[i].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                  children: <Widget> [
                                 
                                   Column(
                                      children: [
                                        Container(
                                    child: Text( chats[i].username,
                                            
                                           style: TextStyle(
                                            fontSize: 13.5,
                                            fontWeight: FontWeight.bold,
                                          
                                    )),
                                  ),
                                
                                        RichText(
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          text: TextSpan(
                                            children: [
                                              
                                              TextSpan(
                                                text: "     Hii, How you doing ",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                        
                                      ],
                                    ),
                                    
                                  
                                  ])
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                        
                      
                      ],
                    ),
                  );
                },
              ),
            )
        ],
      ),
    );
  }
}