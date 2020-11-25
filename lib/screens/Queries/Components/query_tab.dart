import 'package:fltsm/screens/Profile/Components/settings.dart';
import 'package:fltsm/screens/Queries/Components/askcomm.dart';
import 'package:fltsm/screens/Queries/Components/chat_view.dart';
import 'package:flutter/material.dart';

class QueryTab extends StatefulWidget {
  @override
  _QueryTabState createState() => _QueryTabState();
}

class _QueryTabState extends State<QueryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
          body: Container(
                child: Material(
                child: DefaultTabController(
                  
                      length: 2,
                      child: Column(
                        children: <Widget>[
                          
                          Container(
                            constraints: BoxConstraints.expand(height: 50),
                            child: TabBar(
                              // isScrollable: true,
                              indicatorWeight: 1.5,
                              indicatorColor: Color(0xff2D2727),
                              labelColor: Color(0xff2D2727),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17

                              ),
                              tabs: [         
                              Tab(text: "Chats"),
                              Tab(text: "Ask the Community"),
                              
                            ]),
                          ),
                          Expanded(
                            child: Container(
                              child: TabBarView(children: [

                                ChatView(),
                                AskComm()
                                
                            
                              ]),
                            ),
                          )
                        ],
                      ),
                     ),
                    
                     
                  
                
      )),
    );
    
  }
}