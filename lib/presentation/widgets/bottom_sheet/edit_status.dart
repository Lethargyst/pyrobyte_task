import 'package:flutter/material.dart';
import 'package:pyrobyte/theme/app_svg.dart';

class EditStatus extends StatelessWidget {
  const EditStatus({ super.key });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0x1800BE08)
      ),
      child: Row(
        children: [
          AppSvg.check(),

          const SizedBox(width: 8),

          const Expanded(
            child: Text(
              'Изменения от 12.07.2021, 12:30 применены успешно',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w300
              ),
            ),
          )
        ],
      ),
    );
  }
}