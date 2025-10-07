import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_switch_list_tile.dart';

enum Filters {
  glutenFree,
  lactoseFree,
  vegan,
  vegeterian
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool  _glutenFreeFilterSet = false;
  bool  _veganFilterSet = false;
  bool  _lactoseFreeFilterSet = false;
  bool  _vegeterianFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters")),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(
      //         context,
      //       ).pushReplacement(MaterialPageRoute(builder: (context) => TabsScreen()));
      //     }
      //   },
      // ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
        if(didPop) return;
          Navigator.of(context).pop({
            Filters.glutenFree: _glutenFreeFilterSet,
            Filters.lactoseFree: _lactoseFreeFilterSet,
            Filters.vegeterian: _vegeterianFilterSet,
            Filters.vegan: _veganFilterSet,
          });
        },
        child: Column(
          children: [
            FilterSwitchlistTile(
              value: _glutenFreeFilterSet,
              title: 'Glutten-Free',
              subtitle: "Only includes gluten-free meals",
              onChanged: (isChecked){
                setState(() {
                  _glutenFreeFilterSet = isChecked;  
                });
              },
            ),
            FilterSwitchlistTile(
              value: _lactoseFreeFilterSet,
              title: 'Lactose-Free',
              subtitle: "Only includes lactose-free meals",
              onChanged: (isChecked){
                setState(() {
                  _lactoseFreeFilterSet = isChecked;  
                });
              },
            ),
            FilterSwitchlistTile(
              value: _veganFilterSet,
              title: 'Only Vegan',
              subtitle: "Only includes vegan meals",
              onChanged: (isChecked){
                setState(() {
                  _veganFilterSet = isChecked;  
                });
              },
            ),
            FilterSwitchlistTile(
              value: _vegeterianFilterSet,
              title: 'Vegeterian-Free',
              subtitle: "Only includes vegeterian meals",
              onChanged: (isChecked){
                setState(() {
                  _vegeterianFilterSet = isChecked;  
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
