import 'package:fltsm/screens/HomeScreen/Components/drop_down.dart';
import 'package:fltsm/screens/HomeScreen/Components/slidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fltsm/screens/HomeScreen/post.dart';
import 'package:fltsm/screens/HomeScreen/story.dart';

class Feed extends StatelessWidget {
  List<Story> _stories = [
    Story("HOME"),
    Story("BOOKS"),
    Story("TRAVEL"),
    Story("SPORTS"),
    Story("DEVELOPER"),
    Story("ART"),
    Story("DANCE")
    ];

  List<Post> posts = [
    Post(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Henri",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/kevka/128.jpg",
        postImage:
            "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Mariano",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ionuss/128.jpg",
        postImage:
            "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Johan",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/vinciarts/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "London",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ssiskind/128.jpg",
        postImage:
            "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Jada",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/areus/128.jpg",
        postImage:
            "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Crawford",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/oskarlevinson/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Explore()
                  
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      Material(
                        color: Color(0xFFFFE3D3),
                        child: InkWell(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            
                          ),
                          child: Container(
                            padding: EdgeInsets.all(
                              2,
                            ),
                            
                              child: Text(
                                story.name,
                                style: TextStyle(
                                fontSize: 18,
                                  )     
                              ),
                            
                          ),
                        ),
                        onTap: () { 
                            print(story.name); 
                        },
                        
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ),

            // posts
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
                                  
                                  
                              
                                   RichText(
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          text: TextSpan(
                                            children: [
                                              
                                              TextSpan(
                                                text: "Chopta, Tungnath",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                                  
                                  
                                   Row(
                                      children: [
                                        RichText(
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          text: TextSpan(
                                            children: [
                                              
                                              TextSpan(
                                                text: "8.6",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                        
                                        Icon(Icons.star,
                                        size: 20.0,
                                        color: Colors.yellow,
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
                                  text: " ${posts[i].caption}",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeInImage(
                          image: NetworkImage(posts[i].postImage),
                          placeholder: AssetImage("assets/placeholder.png"),
                          width: MediaQuery.of(context).size.width,
                        ),
                        
                       
                        Container(
                          child: SliderExample()
                          
                        ),

                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(left: 60),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.dollar),
                                ),
                                Text("32"),
                                IconButton(
                                  padding: EdgeInsets.only(left: 70),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.comment_o),
                                ),
                                Text(" 22"),
                                IconButton(
                                  padding: EdgeInsets.only(left: 70),
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.send_o),
                                ),
                                Text(" Share")
                              ],
                            ),
                            
                          ],
                        ),



                        // post date
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Febuary 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}