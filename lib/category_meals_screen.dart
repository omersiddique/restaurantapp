import 'package:flutter/material.dart';
import './dummy_data.dart';

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
    final categoryMeals = DUMMY_MEALS.where((element) => element.categories.contains(catID) ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx,index){
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      )
    );
  }
}