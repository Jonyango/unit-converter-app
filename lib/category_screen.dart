import 'package:flutter/material.dart';
import 'package:udacitycourse/unit.dart';
import 'category.dart';

/// Category Screen
/// 
/// This is the home screen of the unit converter app. It shows a list of categories.

class CategoryScreen extends StatelessWidget {

   CategoryScreen();

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

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }
 
// creating the widget that will display my list of categories.

Widget _buildCategoryWidget(List<Widget>categories){
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) => categories[index],
    itemCount: categories.length,
    );
}


  @override
  Widget build(BuildContext context) {
// create a data structure to hold the objects from the Category class.
// I will use List as the data structure.


// I am creating an empty list of type category.
 final categories = <Category>[];


 // Add the objects of the category class inside the list.
 // I  am going to achieve this through writing a for loop.

 for(int i=0; i< 8;i++ ){
   categories.add(
     Category(
       categoryName: _categoryNames[i],
       categoryColor: _baseColors[i],
       categoryIcon: Icons.cake ,
       units: _retrieveUnitList(_categoryNames[i]),
     ));
 }    
 
 
 
 
 final listview = Container(
      padding: EdgeInsets.symmetric(horizontal:8.0),
      child: _buildCategoryWidget(categories)
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
      backgroundColor: Colors.teal[200],
    );
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: appBar,
      body:listview,
      
    );
  }


  
}