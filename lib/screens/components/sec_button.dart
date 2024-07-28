import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.transparent,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 18),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Button background color
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 12), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Button border radius
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle, // Button text style
      ),
    );
  }
}
