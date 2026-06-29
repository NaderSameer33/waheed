class AppValdator {
  static String? emailValdator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجي ادخال البريد الالكتروني  ';
    }
    return null;
  }

  static String? phoneValdator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجي ادخال رقم الهاتف ';
    }
    return null;
  }

  static String? nameValdator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجي ادخال الاسم الكامل  ';
    }
    return null;
  }

  static String? passwordValdator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجي ادخال كلمه المرور   ';
    }
    return null;
  }

  static String? confirmPasswordValdator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجي تاكيد كلمه المرور ';
    }
    return null;
  }
}
