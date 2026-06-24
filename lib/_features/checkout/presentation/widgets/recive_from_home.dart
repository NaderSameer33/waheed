import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/checkout/presentation/widgets/drive_address_item.dart';
import 'package:waheed/_features/checkout/presentation/widgets/home_drive_info.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class ReciveFromHome extends StatelessWidget {
  const ReciveFromHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DriveAddressItem(),
        16.vs,
        HomeDriveInfo(),
      ],
    );
  }
}
