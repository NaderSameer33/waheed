import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedboxExtenstion on num {
  SizedBox get vs => SizedBox(
    height: h,
  );
  SizedBox get hs => SizedBox(
    width: w,
  );
}
