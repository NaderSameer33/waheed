import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart'
    hide Colors;
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class DetailsProductColor extends StatefulWidget {
  const DetailsProductColor({
    super.key,
    required this.proudtcs,
  });
  final Proudtcs proudtcs;

  @override
  State<DetailsProductColor> createState() => _DetailsProductColorState();
}

class _DetailsProductColorState extends State<DetailsProductColor> {
  int currentIndex = 0;

  Color _colorFromHex(String hex) {
    final cleaned = hex.replaceAll('#', '').trim();
    final value = int.tryParse(cleaned, radix: 16);
    if (value == null) return Colors.grey;
    return Color(0xFF000000 | value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'اللون',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),

            Spacer(),
            Text(
              widget.proudtcs.colors[currentIndex].colorNameAr,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        16.vs,
        Row(
          children: [
            ...List.generate(
              widget.proudtcs.colors.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.only(left: 12.r),
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _colorFromHex(
                      widget.proudtcs.colors[index].colorHex,
                    ),
                    border: Border.all(
                      width: 1,
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.transparent,
                    ),
                  ),
                  child: currentIndex == index
                      ? AppImage(image: 'true.svg')
                      : null,
                ),
              ),
            ),
          ],
        ),
        18.vs,
        Divider(),
        24.vs,
      ],
    );
  }
}
