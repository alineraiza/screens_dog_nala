import 'package:challenge_2/models/filter_animal_model.dart';
import 'package:flutter/material.dart';

class FilterAnimalsButtonWidget extends StatefulWidget {
  final FilterAnimalModel filterAnimalsModel;

  const FilterAnimalsButtonWidget({
    super.key,
    required this.filterAnimalsModel,
  });

  @override
  State<FilterAnimalsButtonWidget> createState() =>
      _FilterAnimalsButtonWidgetState();
}

class _FilterAnimalsButtonWidgetState extends State<FilterAnimalsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.filterAnimalsModel.isSelected =
              !widget.filterAnimalsModel.isSelected;
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: widget.filterAnimalsModel.isSelected
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.onSecondary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              widget.filterAnimalsModel.icon,
              const SizedBox(
                width: 12,
              ),
              if (widget.filterAnimalsModel.title != null)
                Text(
                  widget.filterAnimalsModel.title!,
                  style: Theme.of(context).textTheme.titleMedium,
                )
            ],
          ),
        ),
      ),
    );
  }
}
