import 'package:flutter/material.dart';

class VendingMachines extends StatelessWidget {
  const VendingMachines({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Торговые автоматы',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w700
          ),
        ),

        const SizedBox(height: 24),

        Container(
          padding: const EdgeInsets.only(
            top: 8,
            right: 8,
            left: 8,
            bottom: 20
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4,
                      left: 8
                    ),
                    child: Text(
                      '54467345',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
              
                  Text(
                    'Снековый',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    )
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF97879),
                          ),
                        ),

                        const SizedBox(width: 8),

                        const Text(
                          'Не работает',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                          ),

                        )
                      ],
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'ТЦ Мега, Химки',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF999999)
                      ),
                    ),

                    const SizedBox(height: 24),

                    const _Property(
                      title: 'Тип шины',
                      text: 'MDB'
                    ),

                    const _Property(
                      title: 'Уровень сигнала', 
                      text: 'Стабильный'
                    ),

                    const _Property(
                      title: 'Идентификатор', 
                      text: '13856646'
                    ),

                    const _Property(
                      title: 'Модем', 
                      text: '3463457365'
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _Property extends StatelessWidget {
  const _Property({ 
    required this.title,
    required this.text
   });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w300 
            ),
          ),
        ),

        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w300 
            ),
          ),
        ),
      ],
    );
  }
}