import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget{
  const MealsScreen({
    super.key,
    required this.meals,
    required this.title});

  final String title;
  final List<Meal> meals;

  void _selectMeal(BuildContext ctx, Meal meal){

    Navigator.push(ctx, MaterialPageRoute(
      builder: (context) => MealDetailsScreen(meal: meal),
    ));
    
  }

  @override
  Widget build(BuildContext context) {

    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItem(meal: meals[index],onSelectedMeal: (){
        _selectMeal(context,meals[index]);
      },)
      );

    if (meals.isEmpty){
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Nothing Here',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer)),
            SizedBox(height: 16,),
            Text(
              'Try selecting a different category!',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),)
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content
    );
  }
}