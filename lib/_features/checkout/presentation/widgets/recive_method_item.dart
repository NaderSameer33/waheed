import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'recive_from_home.dart';
import 'recive_from_shop.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class ReciveMethodItem extends StatefulWidget {
  const ReciveMethodItem({
    super.key,
  });

  @override
  State<ReciveMethodItem> createState() => _ReciveMethodItemState();
}

class _ReciveMethodItemState extends State<ReciveMethodItem> {
  final _list = const [
    ReciveWayModel(
      title: 'استلام من الفرع',
      image: 'shop.svg',
      subTitle: 'جاهز خلال ٣ أيام',
    ),
    ReciveWayModel(
      title: 'توصيل للمنزل',
      image: 'drive.svg',
      subTitle: '٣–٧ أيام',
    ),
  ];
  int currentIndex = 0;

  Widget buildReciveItem() {
    if (currentIndex == 0) {
      return ReciveFromShop();
    } else {
      return ReciveFromHome();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(
            _list.length,
            (index) => Expanded(
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: AnimatedContainer(
                  padding: EdgeInsets.all(16.r),
                  margin: EdgeInsets.only(left: 16.w),
                  duration: Duration(milliseconds: 500),
                  height: 125.h,

                  decoration: BoxDecoration(
                    border: BoxBorder.all(
                      color: currentIndex == index
                          ? Color(0xff314158)
                          : Colors.transparent,
                      width: currentIndex == index ? 1.5 : 0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: Colors.black.withValues(alpha: .06),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Color(0xff6A8CBE)
                              : Color(0xffF1F5F9),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: AppImage(
                          image: _list[index].image,
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      12.vs,
                      Text(
                        _list[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14.sp,
                        ),
                      ),

                      Text(
                        _list[index].subTitle,
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        24.vs,
        AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: buildReciveItem(),
        ),
      ],
    );
  }
}

class ReciveWayModel {
  final String title, subTitle, image;
  const ReciveWayModel({
    required this.title,
    required this.image,
    required this.subTitle,
  });
}
