

import 'package:flutter/material.dart';
import 'package:flutter_batch_10/utils/colors.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeMenuItem extends StatelessWidget {
  const CoffeeMenuItem({
    super.key,
    required this.menu,
  });

  final Map<String, dynamic> menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 140/128,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                menu['image'],
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            menu['title'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.color3,
            ),
          ),
          Text(
            menu['description'],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.lighter,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '\$ ${menu['price']}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.color3,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {}, 
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  minimumSize: WidgetStatePropertyAll(Size.square(32)),
                  fixedSize: WidgetStatePropertyAll(Size.square(32)),
                ),
                icon: SvgPicture.asset('assets/ic_plus.svg', width: 32, height: 32),
              )
            ],
          ),
        ],
      ),
    );
  }
}