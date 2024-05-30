import 'package:flutter/material.dart';

import 'loading_widget.dart';

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
