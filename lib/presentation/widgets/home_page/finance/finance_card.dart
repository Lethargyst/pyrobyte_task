import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinanceCard extends StatelessWidget {
  const FinanceCard({ 
    super.key,
    required this.cash,
    required this.subtitle,
    required this.icon
  });

  final String cash;
  final String subtitle;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color(0x18218CEF),
              shape: BoxShape.circle
            ),
            child: icon
          ),

          const SizedBox(width: 8),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cash,
                style: const TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
              ),

              const SizedBox(height: 4),

              Text(
                subtitle,
                style: const TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}