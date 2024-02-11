import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/presentation.dart';

class HomeBageBody extends StatelessWidget {
  const HomeBageBody({ super.key });

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VendingMachines(),
        
            SizedBox(height: 24),
        
            LoadingPanel(),
        
            SizedBox(height: 24),
        
            EventsList(),

            SizedBox(height: 24),

            FinanceList()
          ],
        ),
      ),
    );
  }
}