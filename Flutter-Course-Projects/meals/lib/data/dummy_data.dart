import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    name: 'Cookies',
    color: Color.fromARGB(255, 233, 180, 8),
  ),
  Category(
    id: 'c2',
    name: 'Spices',
    color: Color.fromARGB(255, 245, 84, 21),
  )
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c2',
    ],
    title: 'Thessaloniki',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipM3wvxez8JAPbYLg3AEIiIGw9dQuUP01xBOfuqn=s680-w680-h510-rw'
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Dimitri',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
     steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNgDA2LFmkg886Q8Skq8dSiwaGeH0KgB6cNlRLG=s680-w680-h510-rw'
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2'
    ],
    title: 'Simela',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipO0q4W3WQZIvhFgc3ivYonmox8E0Rc7V8sm0ndC=s680-w680-h510-rw'
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Temis',
     ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
     steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipMjkbSNILgrIENxidgIBw5CRI2cNepKqdcee2of=s680-w680-h510-rw'
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
    ],
    title: 'Evros',
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOuH1VYAf4RkIsnwSXizORI55EiOXb7GPInFZsC=s680-w680-h510-rw'
  ),
  
];