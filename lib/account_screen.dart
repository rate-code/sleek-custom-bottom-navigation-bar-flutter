import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'constants.dart';

class AccountScreen extends StatefulWidget {
  final bool isDarkMode;

  const AccountScreen({super.key, required this.isDarkMode});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.isDarkMode ? darkScaffoldBackground : Colors.white,
      body: Center(
        child: Text(
          "Account Screen",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: widget.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
