import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  const BigButton({ 
    super.key,
    required this.title,
    this.width = double.infinity,
    this.onTap 
  });

  final String title;
  final double width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFF218CEF)
          ),
          child: const Text(
            'Сохранить изменения',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}