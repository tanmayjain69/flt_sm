import 'package:flutter/material.dart';
  
  
  class SliderExample extends StatefulWidget {
    @override
    _SliderExampleState createState() {
      return _SliderExampleState();
    }
  }
  
  class _SliderExampleState extends State {
    int _value = 6;
  
    @override
    Widget build(BuildContext context) {
        return Container(
          
                    child: Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 10.0,
                        divisions: 10,
                        activeColor: Colors.red,
                        inactiveColor: Colors.black,
                        label: 'Set a value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} Stars';
                        }
                    )
                  
                
              
            
          
        
      );
    }
  }