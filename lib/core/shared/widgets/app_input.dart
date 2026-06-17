import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputType,
    this.controller,
    this.isPassword = false,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.onTap,
  });
  final String? hintText;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final bool isPassword;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
      obscureText: widget.isPassword && isHide,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null
            ? AppImage(image: widget.prefixIcon!)
            : null,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
                icon: Icon(isHide ? Icons.visibility_off : Icons.visibility),
              )
            : widget.suffixIcon != null
            ? IconButton(
                onPressed: widget.onTap,
                icon: AppImage(image: widget.suffixIcon!),
              )
            : null,
        hintStyle: TextStyle(
          color: AppColors.inputColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        hintText: widget.hintText,
        border: buildBorder,
        focusedBorder: buildBorder,
        enabledBorder: buildBorder,
      ),
    );
  }
}

OutlineInputBorder get buildBorder => OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.r),
  borderSide: BorderSide(color: AppColors.borderColor),
);
