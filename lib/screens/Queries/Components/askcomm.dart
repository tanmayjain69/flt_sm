import 'package:fltsm/screens/Queries/Model/query_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AskComm extends StatefulWidget {

  @override
  _AskCommState createState() => _AskCommState();
}

class _AskCommState extends State<AskComm> {
  List<QueryPost> posts = [
    QueryPost(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        details: "Consequatur nihil aliquid omnis consequatur."
      ),
      QueryPost(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        details: "Consequatur nihil aliquid omnis consequatur."
      ),
      
     
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
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
                                      image: NetworkImage(posts[i].userImage),
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
                                  
                                  Container(
                                    
                                    alignment: Alignment.topRight,
                                    child: Text( posts[i].username,
                                            textAlign: TextAlign.right,
                                           style: TextStyle(
                                            fontSize: 13.5,
                                            fontWeight: FontWeight.bold,
                                          
                                    )),
                                  ),
                                        
                            
                                   Row(
                                      children: [
                                        RichText(
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          text: TextSpan(
                                            children: [
                                              
                                              TextSpan(
                                                text: "12.25 PM .",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                        
              
                                        Text(' Travel ',
                                          
                                          style: TextStyle(
                                            fontSize: 13.5,
                                            backgroundColor: Color(0xFFFFE3D3)
                                             )
                                            )
                                      ],
                                    ),
                                    
                                  
                                  ])
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                
                                TextSpan(
                                  text: " ${posts[i].details}",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                            
                              children: <Widget>[
                              
                                IconButton(
                                  padding: EdgeInsets.only(left: 40),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.pencil),
                                ),
                                Text(
                                  " Answer"
                                ),
                                IconButton(
                                  padding: EdgeInsets.only(left: 40),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.dollar),
                                ),
                                Text(
                                  "  Reward"
                                ),
                                IconButton(
                                  padding: EdgeInsets.only(left: 40),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.heart_o,
                                ),
                                
                                ),
                                Text(
                                  " Whishlist"
                                )
                                ],
                            ),
                          
                          ],
                        ),

                

                      
                      ],
                    ),

                  );
                },
              ),
            ),
             Align(
              alignment: Alignment.bottomRight,
              child:  FloatingActionButton(
              tooltip: 'Add', // used by assistive technologies
              child: Icon(Icons.add),
              onPressed: null,
                ),
          )
        ],
      )
    );
  }
}