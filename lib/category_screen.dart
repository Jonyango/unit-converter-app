import 'package:flutter/material.dart';
import 'category.dart';

/// Category Screen
/// 
/// This is the home screen of the unit converter app. It shows a list of categories.

class CategoryScreen extends StatelessWidget {

  const CategoryScreen();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];


 static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    //TODO rewrite the category widget using a for loop. For better readibility of the code.
    final listview = Container(
      padding: EdgeInsets.symmetric(horizontal:8.0),
      child: ListView(
        shrinkWrap: true,
        children:<Widget> [
            Category(
            categoryName: _categoryNames[0], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[0]),

            Category(
            categoryName: _categoryNames[1], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[1]),
            Category(
            categoryName: _categoryNames[2], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[2]),
            Category(
            categoryName: _categoryNames[3], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[3]),
            Category(
            categoryName: _categoryNames[4], 
            categoryIcon:Icons.cake, 
            categoryColor: _baseColors[4]),
            Category(
            categoryName: _categoryNames[5], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[5]),
            Category(
            categoryName: _categoryNames[6], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[6]),
            Category(
            categoryName: _categoryNames[7], 
            categoryIcon: Icons.cake, 
            categoryColor: _baseColors[7])

        ]
      )
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize:30.0
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: appBar,
      body:listview,
      
    );
  }
}