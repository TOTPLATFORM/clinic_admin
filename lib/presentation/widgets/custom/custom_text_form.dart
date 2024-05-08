import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class CustomTextFieldWithLabel extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final String? Function(String?)? validatee;
  const CustomTextFieldWithLabel({
    super.key,
    required this.controller,
    required this.title,
    this.validatee, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.blackColor));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
                color: AppColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
          controller: controller,
          validator: validatee,
          cursorColor: AppColors.blackColor,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            errorBorder: outlineInputBorder.copyWith(
                borderSide: const BorderSide(color: AppColors.redColor)),
            disabledBorder: outlineInputBorder,
            focusedErrorBorder: outlineInputBorder.copyWith(
                borderSide: const BorderSide(color: AppColors.redColor)),
          ),
        ),
      ],
    );
  }
}
