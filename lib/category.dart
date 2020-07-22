import 'package:flutter/material.dart';
import 'package:udacitycourse/unit.dart';

import 'converter_screen.dart';

//This class defines a category Object. E.g Length. 
///Each object has some properties. 
/// The following properties are found in our Category object.

class Category extends StatelessWidget {
  final String categoryName;
  final IconData categoryIcon;
  final Color categoryColor;
  final List<Unit> units;
  

  // The required term checks for whether a name parameter is passed, it does not check if it is null.
  // That is why we used the assert key word to ensure it is not null.
  const Category({ 
    Key key,
    @required this.categoryName,
    @required this.categoryIcon,
    @required this.categoryColor,
    @required this.units
    }): 
        assert(categoryName != null),
        assert(categoryIcon != null),
        assert(categoryColor != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0)
      ),
      child: InkWell(
        splashColor: categoryColor,
        highlightColor: categoryColor,
        onTap:()=> _navigateToConverterScreen(context),
        
        child:Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                categoryIcon,
                size: 60.0,
              ),
            ),
            Center(
              child:Text(
                categoryName,
                style: TextStyle(
                  fontSize: 24.0
                ),
              )
            ),
          ],)
      ),

    );
  }

 void _navigateToConverterScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              categoryName,
              style: Theme.of(context).textTheme.headline4,
            ),
            centerTitle: true,
            backgroundColor: categoryColor,
          ),
          body: ConverterScreen(
            color: categoryColor,
            units: units,
          ),
        );
      },
    ));
  }

}

