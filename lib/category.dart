import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String categoryName;
  final IconData categoryIcon;
  final Color categoryColor;
  

  // The required term checks for whether a name parameter is passed, it does not check if it is null.
  // That is why we used the assert key word to ensure it is not null.
  const Category({ 
    Key key,
    @required this.categoryName,
    @required this.categoryIcon,
    @required this.categoryColor}): 
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
        onTap: (){
          print('I was tapped');
        },
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
}