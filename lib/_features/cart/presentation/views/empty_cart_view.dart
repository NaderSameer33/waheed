import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(image: 'cart_empty.png'),

          Text(
            'عربة التسوق فارعة...',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          10.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: AppButton(
              onPressed: () => context.pushReplacment(page: AppRouteName.home),
              title: 'اذهب الي التسوق',
            ),
          ),
        ],
      ),
    );
  }
}
