import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class StepsList extends StatelessWidget{
  StepsList({
    super.key,
    required this.meal
    });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Steps',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          for (final step in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8
              ),
              child: Text(
                step,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
      ],
    );
  } 
}