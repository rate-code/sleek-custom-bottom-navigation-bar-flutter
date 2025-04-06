import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_floating_bottom_navigation_bar/constants.dart';

class CartScreen extends StatefulWidget {
  final bool isDarkMode;

  const CartScreen({super.key, required this.isDarkMode});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.isDarkMode ? darkScaffoldBackground : Colors.white,
      body: Center(
        child: Text(
          "Cart Screen",
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
