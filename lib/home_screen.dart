import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_floating_bottom_navigation_bar/constants.dart';

class HomeScreen extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleDarkMode;

  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleDarkMode,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.isDarkMode ? darkScaffoldBackground : Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: widget.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.all(5.w),
            child: InkWell(
              onTap: widget.toggleDarkMode,
              child: Container(
                width: 100.w,
                height: 60,
                decoration: BoxDecoration(
                  color: widget.isDarkMode ? lightGreenColor : Colors.black,
                  borderRadius: BorderRadius.circular(2.5.w),
                ),
                child: Center(
                  child: Text(
                    widget.isDarkMode
                        ? "Switch to Light Mode"
                        : "Switch to Dark Mode",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
