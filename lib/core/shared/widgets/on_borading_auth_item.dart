import 'package:flutter/cupertino.dart';
import 'app_image.dart';
import 'shared_container.dart';

class OnBoradingAuthItem extends StatelessWidget {
  const OnBoradingAuthItem({
    super.key,
    required this.child,
    required this.height,
  });
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppImage(
          image: 'on_borading.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 0,

          child: ShardContainer(
            height: height,
            child: child,
          ),
        ),
      ],
    );
  }
}
