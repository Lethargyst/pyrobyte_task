import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pyrobyte/presentation/widgets/widgets.dart';
import 'package:pyrobyte/theme/app_svg.dart';

class FinanceList extends StatelessWidget {
  const FinanceList({ 
    super.key 
  });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Финансы',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        const SizedBox(height: 16),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FinanceCard(
                cash: '5700 ₽', 
                subtitle: 'Деньги в ТА', 
                icon: AppSvg.cash(
                  color: const Color(0xFF218CEF)
                )
              ),

              const SizedBox(width: 8),

              FinanceCard(
                cash: '1255 ₽', 
                subtitle: 'Сдача', 
                icon: AppSvg.cashback(
                  color: const Color(0xFF218CEF)
                )
              ),

              const SizedBox(width: 8),

              FinanceCard(
                cash: '5700 ₽', 
                subtitle: 'Деньги в ТА', 
                icon: AppSvg.cash(
                  color: const Color(0xFF218CEF)
                )
              ),

              const SizedBox(width: 8),
            ],
          ),
        )
      ],
    );
  }
}