import 'package:flutter/material.dart';
import '../../../cart/presentation/widgets/cart_summary_order.dart';
import 'drive_address_item.dart';
import 'home_drive_cash.dart';
import 'home_drive_info.dart';
import 'home_drive_way.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';

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
