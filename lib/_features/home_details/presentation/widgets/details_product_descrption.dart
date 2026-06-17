import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/utils/app_colors.dart';

class DetailsProductDescrption extends StatefulWidget {
  const DetailsProductDescrption({super.key});

  @override
  State<DetailsProductDescrption> createState() =>
      _DetailsProductDescrptionState();
}

class _DetailsProductDescrptionState extends State<DetailsProductDescrption> {
  final _list = ['خياطة يدوية', 'بطانة حريرية', 'قصة سليم فيت'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'الوصف',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        11.vs,
        Text(
          'بدلة رجالية كلاسيكية بقصة عصرية أنيقة، مصنوعة من أجود الأقمشة وتُفصّل خصيصاً وفقاً لقياساتك التي تدخلها عبر معالج القياسات. مثالية للمناسبات الرسمية والاجتماعات.',
          style: TextStyle(
            color: AppColors.infoColor,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
        11.vs,
        Row(
          children: [
            ...List.generate(
              3,
              (index) => Container(
                margin: EdgeInsets.only(left: 16.r),
                alignment: Alignment.center,
                height: 24.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xffC9A961).withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Text(
                  _list[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp,
                    color: Color(0xffC9A961),
                  ),
                ),
              ),
            ),
          ],
        ),
        24.vs,
        Divider(),
        24.vs,
      ],
    );
  }
}
