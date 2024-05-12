import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? initialValue;
  final Function(T?)? onChanged;
  final String Function(T) displayItem;

  const CustomDropdown({
    super.key,
    required this.items,
    this.initialValue,
    this.onChanged,
    required this.displayItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        value: initialValue,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
        hint: const Text("Select item"),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<T>>((T value) {
          return DropdownMenuItem<T>(
            value: value,
            child: Text(displayItem(value)),
          );
        }).toList(),
      ),
    );
  }
}
