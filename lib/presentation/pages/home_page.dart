import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/presentation.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context){
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1F1F9),
        appBar: CustomAppBar(),
        body: HomeBageBody(),
      ),
    );
  }
}