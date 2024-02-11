import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/widgets.dart';

class EventsList extends StatelessWidget {
  const EventsList({ 
    super.key 
  });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'События',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        const SizedBox(height: 16),

        const EventPreview(
          time: TimeOfDay(hour: 11, minute: 20), 
          title: 'Сейф переполнен'
        ),

        const SizedBox(height: 8),

        const EventPreview(
          time: TimeOfDay(hour: 14, minute: 00), 
          title: 'Сломался купюроприемник',
          subtitle: '2341245',
        ),

        const SizedBox(height: 8),

        const EventPreview(
          time: TimeOfDay(hour: 11, minute: 20), 
          title: 'Закончилась наличка',
          subtitle: 'Toshiba снековый',
        ),

        const SizedBox(height: 16),

        StrokeButton(
          title: 'Смотреть еще',
          onTap: (){},
          padding: const EdgeInsets.all(11),
        )
      ],
    );
  }
}