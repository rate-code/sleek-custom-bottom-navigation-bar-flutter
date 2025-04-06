import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_floating_bottom_navigation_bar/constants.dart';

class CategoriesScreen extends StatefulWidget {
  final bool isDarkMode;

  const CategoriesScreen({required this.isDarkMode, super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.isDarkMode ? darkScaffoldBackground : Colors.white,
      body: Center(
        child: Text(
          "Categories Screen",
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
