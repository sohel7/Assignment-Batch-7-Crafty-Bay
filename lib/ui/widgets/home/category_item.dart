import 'package:crufty_bay/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          color: AppColors.primaryColor.withOpacity(0.2),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.computer,size: 40,color: AppColors.primaryColor,),
          ),
        ),
        const Text('Electronics', style: TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w300
        ),
        )
      ],
    );
  }
}