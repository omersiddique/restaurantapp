import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
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
        title: Text(catTitle),
      ),
      body: Center(
        child: Text('The Recipes'),
      ),
    );
  }
}