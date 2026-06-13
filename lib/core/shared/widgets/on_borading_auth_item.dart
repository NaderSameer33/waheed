
import 'package:flutter/cupertino.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';
import 'package:waheed/core/shared/widgets/shared_container.dart';

class OnBoradingAuthItem extends StatelessWidget {
  const OnBoradingAuthItem({
    super.key,
    required this.child,
  });
  final Widget child;

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
            child: child,
          ),
        ),
      ],
    );
  }
}
