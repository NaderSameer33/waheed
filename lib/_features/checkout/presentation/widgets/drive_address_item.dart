
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class DriveAddressItem extends StatelessWidget {
  const DriveAddressItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(image: 'marker.svg'),
        8.hs,
        Text(
          'عنوان التوصيل',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: Color(0xff314158),
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'تغيير',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
