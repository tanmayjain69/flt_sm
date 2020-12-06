import 'package:fltsm/controllers/query_controller.dart';
import 'package:fltsm/screens/Queries/Components/filter.dart';
import 'package:fltsm/screens/Queries/query_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'dp_down_sort.dart';

class AskComm extends StatefulWidget {
  
  @override
  _AskCommState createState() => _AskCommState();
}

class _AskCommState extends State<AskComm> {

final querycontroller = Get.put(QueryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GetX<QueryController>(
        builder: (controller) {
          return SingleChildScrollView(
          
              child: Column(
              children: <Widget>[
                Container(
                                
                                padding: EdgeInsets.only(left:10,top: 10),
                                alignment: Alignment.topLeft,
                                child: Text("Post Your Query...",
                                          style: TextStyle(
                                                  fontSize: 20.5,
                                                  fontWeight: FontWeight.bold,
                                                
                                          )
                                )
                              ),
                Container(
                  padding: EdgeInsets.only(left:70,top: 10),
                  child: Row(
                    children: <Widget>[
                      Sort(),
                      Filter()
                    ],),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                     
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.querydetails.length,
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
                                            image: NetworkImage(controller.querydetails[i].userImage),
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
                                          child: Text( controller.querydetails[i].username,
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
                                                      text: "${controller.querydetails[i].date} .",
                                                      style: TextStyle(color: Colors.black),
                                                    ),
                                                    
                                                  ],
                                                ),
                                              ),
                              
                    
                                              Text(' ${controller.querydetails[i].tag} ',
                                                
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
                                        text: " ${controller.querydetails[i].details}",
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
                   Container(
                    padding: EdgeInsets.only(top: 430,left: 340),
                    child:  FloatingActionButton(
                    tooltip: 'Add', // used by assistive technologies
                    child: Icon(Icons.add),
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(
                      builder: (context) {
                        return QueryUpload();
                      },
                    ));
                    },
                      ),
                )
              ],
            ),
          );
        }
      )
    );
  }
}