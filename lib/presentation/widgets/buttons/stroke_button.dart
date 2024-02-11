import 'package:flutter/material.dart';

class StrokeButton extends StatelessWidget {
  const StrokeButton({ 
    super.key,
    required this.title,
    this.padding = const EdgeInsets.all(12),
    this.width = double.infinity,
    this.onTap,
  });

  final String title;
  final EdgeInsets padding;
  final double width;
  final VoidCallback? onTap;  

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: width,
      child: Material(
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFF218CEF)
              ),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Jost',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF218CEF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}