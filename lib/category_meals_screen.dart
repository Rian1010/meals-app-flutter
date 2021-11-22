import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // can be used without instantiating that class
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, idx) {
            return Text(categoryMeals[idx].title);
          },
          itemCount: categoryMeals.length),
    );
  }
}
