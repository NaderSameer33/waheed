import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppResendCode extends StatefulWidget {
  const AppResendCode({super.key});

  @override
  State<AppResendCode> createState() => _AppResendCodeState();
}

class _AppResendCodeState extends State<AppResendCode> {
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
            onPressed: () {
              isSend = true;
              setState(() {});
              _startStream();
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
