import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.topSpacing,
    this.rightSpacing,
    this.bottomSpacing,
    this.leftSacing,
    this.borderRadiut,
  });
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final double? topSpacing, rightSpacing, bottomSpacing, leftSacing;
  final double? borderRadiut;
  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (image.isEmpty) {
      return SizedBox.shrink();
    }
    if (image.startsWith('http') || image.startsWith('https')) {
      child = CachedNetworkImage(
        height: height,
        width: width,
        color: color,
        fit: fit,
        placeholder: (context, url) => Center(
          child: LoadingAnimationWidget.threeArchedCircle(
            color: Colors.black,
            size: 20,
          ),
        ),
        imageUrl: image,
        errorWidget: (context, url, error) =>
            Image.asset('assets/images/error.png'),
      );
    } else if (image.endsWith('json')) {
      child = Lottie.asset(
        'assets/lotties/$image',
        height: height,
        width: width,
        fit: fit,
      );
    } else if (image.endsWith('svg')) {
      child = SvgPicture.asset(
        'assets/icons/$image',
        fit: fit ?? BoxFit.scaleDown,
        height: height,

        color: color,
        width: width,
      );
    } else {
      child = Image.asset(
        'assets/images/$image',
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }

    return Padding(
      padding: EdgeInsets.only(
        top: topSpacing ?? 0,
        right: rightSpacing ?? 0,
        left: leftSacing ?? 0,
        bottom: bottomSpacing ?? 0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadiut ?? 0),
        child: child,
      ),
    );
  }
}
