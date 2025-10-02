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
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOuH1VYAf4RkIsnwSXizORI55EiOXb7GPInFZsC=s680-w680-h510-rw'
  ),
  
];