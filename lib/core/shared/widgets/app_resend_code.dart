import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class AppResendCode extends StatefulWidget {
  const AppResendCode({super.key, required this.email});
  final String email;

  @override
  State<AppResendCode> createState() => _AppResendCodeState();
}

class _AppResendCodeState extends State<AppResendCode> {
  Future<bool> resendOtp() async {
    final dioHelper = DioHelper();
    try {
      final response = await dioHelper.sendData(
        endPoint: 'api/Account/resend-verification-otp',
        data: {
          'email': widget.email,
        },
      );

      showSnakBar(context, text: response.data['message']);
      return true;
    } on DioException catch (e) {
      showSnakBar(
        context,
        text: e.response?.data['msg'] ?? 'problem found please try again later',
        isError: true,
      );
      return false;
    }
  }

  late Stream<int> stream;
  bool isSend = true;
  @override
  void initState() {
    super.initState();
    _startStream();
  }

  _startStream() {
    stream = Stream.periodic(
      Duration(seconds: 1),
      (count) => 90 - count,
    ).take(91);
  }

  _onComplete(AsyncSnapshot snapShot) {
    if (snapShot.data == 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          isSend = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isSend == false)
          TextButton(
            onPressed: () async {
              bool isSucces = await resendOtp();
              if (isSucces) {
                _startStream();
                setState(() {
                  isSend = true;
                });
              }
            },
            child: Text(
              'اعاده الارسال ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
        if (isSend)
          StreamBuilder<int>(
            initialData: 90,
            stream: stream,
            builder: (context, snapShot) {
              _onComplete(snapShot);
              final remaining = snapShot.data ?? 0;
              final minutes = remaining ~/ 60;
              final secondes = remaining % 60;
              String timer =
                  '${secondes.toString().padLeft(2, '0')} : ${minutes.toString().padLeft(2, '0')}';

              return Center(
                child: Text(
                  timer,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
