import 'package:flutter/material.dart';

class PreferencePage extends StatefulWidget {

  PreferencePage({Key key, this.title}) : super(key: key);

  final String title;
  static const routeName = '/preferences';
  @override
  _PreferencePageState createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {

  
 List<String> reportList = [
    "Travel",
    "Books",
    "Drama",
    "Music",
  ];

  List<String> selectedReportList = List();

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            title: Text("Report Video"),
            content: MultiSelectChip(
              reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedReportList = selectedList;
                });
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Report"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Report"),
              onPressed: () => _showReportDialog(),
            ),
            Text(selectedReportList.join(" , ")),
          ],
        ),
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = List();

  _buildChoiceList() {
    List<Widget> choices = List();

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}