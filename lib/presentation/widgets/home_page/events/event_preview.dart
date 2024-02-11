import 'package:flutter/material.dart';
import 'package:pyrobyte/theme/theme.dart';

class EventPreview extends StatelessWidget {
  const EventPreview({ 
    super.key,
    required this.time,
    required this.title,
    this.subtitle
  });

  final TimeOfDay time;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(left: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xFFF97879),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4),
            bottomRight: Radius.circular(4),
          )
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  color: Color(0xFFCCCCCC),
                  fontFamily: 'Jost',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
      
            const SizedBox(width: 18),
      
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                  ),
              
                  subtitle != null 
                    ? Text(
                      subtitle!,
                      style: const TextStyle(
                        color: Color(0xFFCCCCCC),
                        fontFamily: 'Jost',
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    )
                    : const SizedBox.shrink()
                ],
              ),
      
            ),
            
            Padding(
              padding: const EdgeInsets.all(16),
              child: AppSvg.arrow(),
            )
          ],
        ),
      ),
    );
  }
}