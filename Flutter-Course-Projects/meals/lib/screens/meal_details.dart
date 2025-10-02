import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/ingredients_list.dart';
import 'package:meals/widgets/photos.dart';
import 'package:meals/widgets/steps_list.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${meal.title} Details'),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavorite(meal);
            },
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: ListView(
        children: [
          Photos(check: 2, meal: meal),
          const SizedBox(height: 14),
          IngredientsList(meal: meal),
          StepsList(meal: meal),
        ],
      ),
    );
  }
}
