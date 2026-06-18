import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:140.h ,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(16.r) ,
      ),
      child: Row(
        children: [
          
        ],
      ),
    ) ; 
  }
}