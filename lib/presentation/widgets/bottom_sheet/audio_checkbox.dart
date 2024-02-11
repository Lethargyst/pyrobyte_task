import 'package:flutter/material.dart';
import 'package:pyrobyte/theme/app_svg.dart';

class AudioCheckbox extends StatefulWidget {
  const AudioCheckbox({ super.key });

  @override
  State<AudioCheckbox> createState() => _AudioCheckboxState();
}

class _AudioCheckboxState extends State<AudioCheckbox> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            _isEnabled = !_isEnabled;
          }),
          child: Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xFFD9E2F1)
              )
            ),
            child: _isEnabled ? AppSvg.check(
              color: Colors.black
            ) : const SizedBox.shrink(),
          ),
        ),

        const SizedBox(width: 16),

        const Text(
          'Включить звук',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }
}