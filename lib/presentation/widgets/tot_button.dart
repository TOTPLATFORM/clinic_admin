import 'package:clinic_admin/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class TotButton extends StatelessWidget {
  const TotButton({
    super.key,
    this.onPressed,
    required this.child,
    this.style,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: isLoading ? const LoadingWidget() : child,
    );
  }
}
