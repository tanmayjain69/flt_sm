import 'package:flutter/material.dart';


class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left:60),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {},
          ), 
          Text("Filter",
      style: TextStyle(
              fontSize: 18,
        
      ))
      ]
                                            
         )
      );
  }
}