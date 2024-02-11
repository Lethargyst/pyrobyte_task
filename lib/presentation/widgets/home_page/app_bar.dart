import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/widgets.dart';
import 'package:pyrobyte/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({ super.key });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 8
      ),
      child: Row(
        children: [
          AppSvg.back(),
      
          const Spacer(),
      
          GestureDetector(
            onTap: () => showAppBottomSheet(context),
            child: AppSvg.gear()
          ),
        ],
      ),
    );
  }
}