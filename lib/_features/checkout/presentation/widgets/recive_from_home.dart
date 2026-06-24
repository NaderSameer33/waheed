import 'package:flutter/material.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_summary_order.dart';
import 'package:waheed/_features/checkout/presentation/widgets/drive_address_item.dart';
import 'package:waheed/_features/checkout/presentation/widgets/home_drive_cash.dart';
import 'package:waheed/_features/checkout/presentation/widgets/home_drive_info.dart';
import 'package:waheed/_features/checkout/presentation/widgets/home_drive_way.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';

class ReciveFromHome extends StatelessWidget {
  const ReciveFromHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DriveAddressItem(),
        16.vs,
        HomeDriveInfo(),
        HomeDriveWay(),
        24.vs,
        HomeDriveCash(),
        CartSummaryOrder(),
      ],
    );
  }
}
