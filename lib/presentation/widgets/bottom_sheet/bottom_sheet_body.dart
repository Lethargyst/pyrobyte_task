import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/buttons/buttons.dart';
import 'package:pyrobyte/presentation/widgets/bottom_sheet/bottom_sheet.dart';


Future<void> showAppBottomSheet(context) => showModalBottomSheet(
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  builder: (context) => const BottomSheetBody()
);

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({ super.key });

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16)
        )
      ),
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Загрузка',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
            
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                )
              ],
            ),
        
            const SizedBox(height: 24),
        
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    EditStatus(),
              
                    SizedBox(height: 24),
              
                    PositionEditing(),
              
                    SizedBox(height: 24),
              
                    AudioCheckbox(),
              
                    SizedBox(height: 24),
              
                    MasterMode(),
              
                    SizedBox(height: 24),
              
                    PriceLists()
                  ],
                ),
              ),
            ),
        
            BigButton(
              title: 'Сохранить изменения',
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}