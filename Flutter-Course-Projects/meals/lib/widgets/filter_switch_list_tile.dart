import 'package:flutter/material.dart';


class FilterSwitchlistTile extends StatefulWidget{
  
  FilterSwitchlistTile({
    super.key,
    required this.booleanCheck,
    required this.title,
    required this.subtitle,
  });

  var booleanCheck = false;
  final String title;
  final String subtitle;

  @override
  State<StatefulWidget> createState() {
    return _FilterSwitchlistTileState();
  }
}

class _FilterSwitchlistTileState extends State<FilterSwitchlistTile>{
  
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
            value: widget.booleanCheck,
            onChanged: (isChekced) {
              setState(() {
                if (!widget.booleanCheck) {
                  widget.booleanCheck = true;
                } else {
                  widget.booleanCheck = false;
                }
              });
            },
            title: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            subtitle: Text(
              widget.subtitle,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 32, right: 22),
          );
  }
}