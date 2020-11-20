import 'package:fltsm/controllers/posts_controller.dart';
import 'package:fltsm/screens/HomeScreen/Components/drop_down.dart';
import 'package:fltsm/screens/HomeScreen/Components/slidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fltsm/screens/HomeScreen/story.dart';
import 'package:get/get.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<Story> _stories = [
    Story("HOME"),
    Story("BOOKS"),
    Story("TRAVEL"),
    Story("SPORTS"),
    Story("DEVELOPER"),
    Story("ART"),
    Story("DANCE")
    ];

  final postcontroller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GetX<PostController>(
        builder: (controller) {
          return SingleChildScrollView(
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
                    itemCount: controller.postDetails.length,
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
                                          image: NetworkImage(controller.postDetails[i].userImage),
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
                                        child: Text( controller.postDetails[i].username,
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
                                                    text: '${controller.postDetails[i].likes}',
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                  
                                                ],
                                              ),
                                            ),
                            
                                            Icon(Icons.star,
                                            size: 20.0,
                                            color: Colors.yellow,
                                            ),
                                            Text(' ${controller.postDetails[i].tag} ',
                                              
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
                                      text: " ${controller.postDetails[i].caption}",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FadeInImage(
                              image: NetworkImage(controller.postDetails[i].postImage),
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
                                    Text("${controller.postDetails[i].rewards}"),
                                    IconButton(
                                      padding: EdgeInsets.only(left: 70),
                                      onPressed: () {},
                                      icon: Icon(FontAwesome.comment_o),
                                    ),
                                    Text(" ${controller.postDetails[i].comments.length}"),
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
          );
        }
      ),
    );
  }
}