import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:pyrobyte/presentation/widgets/widgets.dart';

class PriceLists extends StatelessWidget {
  const PriceLists({ super.key });

  @override
  Widget build(BuildContext context){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Прайс листы',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Последняя синхронизация с модемом',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 14,
                fontWeight: FontWeight.w300
              ),
            ),

            Text(
              '1 час назад',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 14,
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),

        SizedBox(height: 8),

        PricesTable(),

        SizedBox(height: 32),
      ],
    );
  }
}

class PricesTable extends StatefulWidget {
  const PricesTable({ super.key });

  @override
  State<PricesTable> createState() => _PricesTableState();
}

class _PricesTableState extends State<PricesTable> { 
  final List<TextEditingController> _numberControllers = [];
  final List<TextEditingController> _priceControllers = [];

  @override
  void dispose() {
    for (final controller in _numberControllers)
      controller.dispose();
    for (final controller in _priceControllers)
      controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                '#',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF999999)
                )
              )
            ),

            SizedBox(width: 16),

            Expanded(
              flex: 5,
              child: Text(
                'Цена',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF999999)
                )
              )
            ),

            Spacer(flex: 7)
          ],
        ),

        ...List.generate(
          _numberControllers.length, 
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: NumericInputField(
                    controller: _numberControllers[index],
                  ),
                ),
                
                const SizedBox(width: 16),
            
                Expanded(
                  flex: 5,
                  child: NumericInputField(
                    controller: _priceControllers[index],
                  ),
                ),
                  
                Expanded(
                  flex: 7,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap:() => setState(() {
                        _numberControllers[index].dispose();
                        _priceControllers[index].dispose();
                      
                        _numberControllers.removeAt(index);
                        _priceControllers.removeAt(index);
                      }),
                      child: const Icon(
                        Icons.close,
                        color: Color(0xFFF97879),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),

        const SizedBox(height: 16),

        StrokeButton(
          title: 'Добавить строку',
          onTap: () => setState(() {
            _numberControllers.add(TextEditingController());
            _priceControllers.add(TextEditingController());
          }),
        )
      ],
    );
  }
}