import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/main_drawer.dart';

const kInitialFilters = {
    Filters.glutenFree: false,
    Filters.lactoseFree: false,
    Filters.vegan: false,
    Filters.vegeterian: false
  };

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> favoriteMeals = [];
  Map<Filters, bool> _selectedFilters = kInitialFilters;

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: Duration(seconds: 3)),
    );
  }

  void _toggleFavoriteStatus(Meal meal) {
    final isExisting = favoriteMeals.contains(meal);

    setState(() {
      if (isExisting) {
        favoriteMeals.remove(meal);
        _showInfoMessage('Meal is no longer a favorite');
      } else {
        favoriteMeals.add(meal);
        _showInfoMessage('Marked as favorite');
      }
    });
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filters, bool>>(
        MaterialPageRoute(builder: (context) => FiltersScreen(currentFilters: _selectedFilters)),
      );
      setState(() {
        _selectedFilters = result ?? kInitialFilters;  
      });
      
    }
  }

  @override
  Widget build(BuildContext context) {

    final availableMeals = dummyMeals.where((meal){
      if (_selectedFilters[Filters.glutenFree]! && !meal.isGlutenFree){
        return false;
      }
      if (_selectedFilters[Filters.lactoseFree]! && !meal.isLactoseFree){
        return false;
      }
      if (_selectedFilters[Filters.vegan]! && !meal.isVegan){
        return false;
      }
      if (_selectedFilters[Filters.vegeterian]! && !meal.isVegetarian){
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleFavoriteStatus,
      availableMeals: availableMeals,
      favoriteMeals: favoriteMeals,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: favoriteMeals,
        onToggleFavorite: _toggleFavoriteStatus,
        favoriteMeals: favoriteMeals,
      );
      activePageTitle = 'Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_purple500),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
