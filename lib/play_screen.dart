import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_floating_bottom_navigation_bar/constants.dart';

class PlayScreen extends StatefulWidget {
  final bool isDarkMode;

  const PlayScreen({super.key, required this.isDarkMode});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      widget.isDarkMode ? darkScaffoldBackground: Colors.white,
      body: Center(
        child: Text(
          "Play Screen",
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
