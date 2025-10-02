import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ingredients',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 14),
        for (final ingredient in meal.ingredients)
          Text(
            ingredient,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        const SizedBox(height: 24),
      ],
    );
  }
}
