import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/bottom_sheet/bottom_sheet.dart';

class PositionEditing extends StatelessWidget {
  const PositionEditing({ super.key });

  @override
  Widget build(BuildContext context){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Decimal position',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        SizedBox(height: 8),

        Row(
          children: [
            Expanded(
              child: NumericInputField(
                hint: 'Cash',
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: NumericInputField(
                hint: 'Cashless',
              ),
            ),
          ]
        ),

        SizedBox(height: 24),

        Text(
          'Scale factor',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        SizedBox(height: 8),

        Row(
          children: [
            Expanded(
              child: NumericInputField(
                hint: 'Cash',
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: NumericInputField(
                hint: 'Cashless',
              ),
            ),
          ]
        ),
      ],
    );
  }
}