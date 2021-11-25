import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, idx) {
          return MealItem(
            id: favoriteMeals[idx].id,
            title: favoriteMeals[idx].title,
            imageUrl: favoriteMeals[idx].imageUrl,
            duration: favoriteMeals[idx].duration,
            affordability: favoriteMeals[idx].affordability,
            complexity: favoriteMeals[idx].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
