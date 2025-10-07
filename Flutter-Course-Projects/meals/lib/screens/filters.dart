import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_switch_list_tile.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _veganFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegeterianFilterSet = false;

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
      body: Column(
        children: [
          FilterSwitchlistTile(
            booleanCheck: false,
            title: 'Glutten-Free',
            subtitle: "Only includes gluten-free meals",
          ),
          FilterSwitchlistTile(
            booleanCheck: false,
            title: 'Lactose-Free',
            subtitle: "Only includes lactose-free meals",
          ),
          FilterSwitchlistTile(
            booleanCheck: false,
            title: 'Only Vegan',
            subtitle: "Only includes vegan meals",
          ),
          FilterSwitchlistTile(
            booleanCheck: false,
            title: 'Vegeterian-Free',
            subtitle: "Only includes vegeterian meals",
          ),
        ],
      ),
    );
  }
}
