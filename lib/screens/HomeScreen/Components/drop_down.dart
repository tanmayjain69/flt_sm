import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
 String dropdownValue = 'Popularity';

@override
Widget build(BuildContext context) {
  return DropdownButton<String>(
    value: dropdownValue,
    icon: Icon(Icons.arrow_drop_down),
    iconSize: 32,
    elevation: 16,
    style: TextStyle(
      color: Colors.black
    ),
    underline: Container(
      
    ),
    onChanged: (String newValue) {
      setState(() {
        dropdownValue = newValue;
      });
    },
    items: <String>['Popularity', 'Followers','Latest']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(),
  );

}
}