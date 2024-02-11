import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumericInputField extends StatelessWidget {
  const NumericInputField({ 
    super.key,
    this.controller,
    this.width = double.infinity,
    this.hint 
  });

  final double width;
  final TextEditingController? controller;
  final String? hint;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFFD9E2F1)
        )
      ),
      child: TextFormField(
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: hint,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            fontFamily: 'Jost',
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Color(0xFF999999)
          )
        ),
      ),
    );
  }
}