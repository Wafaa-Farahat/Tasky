import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  const CustomElevatedBtn({
    super.key,
    required this.onPressed,
    this.width = 350,
    this.height = 40,
    this.radius = 20,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF15886C),
        foregroundColor: const Color(0xFFFFCFC),
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        text,
        style: textStyle ?? Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
