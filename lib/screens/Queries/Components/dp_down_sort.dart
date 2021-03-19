import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
 String dropdownValue = 'Latest';

@override
Widget build(BuildContext context) {
  return DropdownButton<String>(
    value: dropdownValue,
    icon: Icon(Icons.arrow_drop_down),
    iconSize: 32,
    elevation: 16,
    style: TextStyle(
      color: Colors.black,
      fontSize: 18,
    ),
    underline: Container(
      
    ),
    onChanged: (String newValue) {
      setState(() {
        dropdownValue = newValue;
      });
    },
    items: <String>['Latest', 'Followers','Popular']
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