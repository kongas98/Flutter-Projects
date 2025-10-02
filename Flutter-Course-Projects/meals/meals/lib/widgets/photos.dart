import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class Photos extends StatelessWidget {
  const Photos({super.key, required this.check, required this.meal});

  final int check;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (check == 1) ...[
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.black54,
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
              child: Column(
                children: [
                  Text(
                    meal.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (meal.isGlutenFree)
                        MealItemTrait(icon: Icons.nature, label: 'Gluten Free'),
                      if (meal.isVegetarian)
                        MealItemTrait(
                          icon: Icons.router_outlined,
                          label: 'Vegeterian',
                        ),
                      if (meal.isLactoseFree)
                        MealItemTrait(
                          icon: Icons.compare,
                          label: 'Lactose Free',
                        ),
                      if (meal.isVegan)
                        MealItemTrait(
                          icon: Icons.rate_review_outlined,
                          label: 'Vegan',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        if (check == 2) ...[
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
            height: 350,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (meal.isGlutenFree)
                MealItemTrait(icon: Icons.nature, label: ''),
              if (meal.isLactoseFree)
                MealItemTrait(icon: Icons.compare, label: ''),
              if (meal.isVegan)
                MealItemTrait(icon: Icons.rate_review_outlined, label: ''),
              if (meal.isVegetarian)
                MealItemTrait(icon: Icons.router_outlined, label: ''),
            ],
          ),
        ],
      ],
    );
  }
}
