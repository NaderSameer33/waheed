
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RangeSliderItem extends StatefulWidget {
  const RangeSliderItem({super.key, required this.onChanged});
  final ValueChanged onChanged;
  @override
  State<RangeSliderItem> createState() => _RangeSliderItemState();
}

class _RangeSliderItemState extends State<RangeSliderItem> {
  RangeValues values = RangeValues(500, 1000);
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        secondaryActiveTrackColor: Color(0xffDCDCDC),
        trackHeight: 6.h,
        showValueIndicator: ShowValueIndicator.always,
        valueIndicatorColor: Colors.black,

        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 12,
        ),

        thumbColor: Colors.white,

        overlayColor: Color(0xffDDDDDD),

        activeTrackColor: Colors.black,

        inactiveTrackColor: Colors.grey.shade300,
      ),
      child: RangeSlider(
        labels: RangeLabels(
          values.start.toStringAsFixed(0),
          values.end.toStringAsFixed(0),
        ),
        values: values,
        min: 0,
        max: 1800,
        onChanged: (value) {
          setState(() {
            values = value;
          });
          widget.onChanged(value);
        },
      ),
    );
  }
}
