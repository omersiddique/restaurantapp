import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
// final String categoryId;
// final String categoryTitle;

// CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catTitle = routeArguments['title'];
    final catID = routeArguments['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle + ' - ID: ' + catID),
      ),
      body: Center(
        child: Text('The Recipes'),
      ),
    );
  }
}