import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/photos.dart';

class MealItem extends StatelessWidget{
  
  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectedMeal
  });
  
  final Meal meal;
  final void Function() onSelectedMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onSelectedMeal,
        child: Photos(check: 1, meal: meal)
      ),
    );
  }
}