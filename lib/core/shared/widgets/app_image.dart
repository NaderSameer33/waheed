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
  });
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    if (image.startsWith('http') || image.startsWith('https')) {
      return CachedNetworkImage(
        height: height,
        width: width,
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
      return Lottie.asset(
        'assets/lotties/$image',
        height: height,
        width: width,
        fit: fit,
      );
    } else if (image.endsWith('svg')) {
      return SvgPicture.asset(
        'assets/icons/$image',
        fit: fit ?? BoxFit.scaleDown,
        height: height,
        width: width,
      );
    } else {
      return Image.asset(
        'assets/images/$image',
        height: height,
        width: width,
        fit: fit,
      );
    }
  }
}
