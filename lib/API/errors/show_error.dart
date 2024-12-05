import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/configuration.dart';

class ShowResponse {
  static showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Configuration.successColor,
        content: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }

  static showError(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Configuration.errorColor,
        content: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
