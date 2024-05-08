import '../../../core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWithLabel extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final String? Function(String?)? validatee;
  const CustomTextFieldWithLabel({
    super.key,
    required this.controller,
    required this.title,
    this.validatee,
  });

  @override
  State<CustomTextFieldWithLabel> createState() =>
      _CustomTextFieldWithLabelState();
}

class _CustomTextFieldWithLabelState extends State<CustomTextFieldWithLabel> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: AppColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          validator: widget.validatee,
          cursorColor: AppColors.blackColor,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.blackColor)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey)),
          ),
        ),
      ],
    );
  }
}
