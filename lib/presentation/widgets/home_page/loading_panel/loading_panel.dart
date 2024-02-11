import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/home_page/loading_panel/loading_block.dart';
import 'package:pyrobyte/presentation/widgets/widgets.dart';

class LoadingPanel extends StatelessWidget {
  const LoadingPanel({ super.key });

  @override
  Widget build(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const LoadingBlock(
          startPercentage: 0,
          loadingSpeed: 10,
        ),

        const SizedBox(width: 16),

        Expanded(
          child: Column(
            children: [
              StrokeButton(
                title: 'Загрузка',
                onTap: (){},
              ),
          
              const SizedBox(height: 16),
          
              StrokeButton(
                title: 'Инвентаризация',
                onTap: (){},
              ),
            ],
          ),
        )
      ],
    );
  }
}