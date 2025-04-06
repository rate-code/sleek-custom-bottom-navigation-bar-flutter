import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sleek_floating_bottom_navigation_bar/constants.dart';
import 'package:sleek_floating_bottom_navigation_bar/account_screen.dart';
import 'package:sleek_floating_bottom_navigation_bar/cart_screen.dart';
import 'package:sleek_floating_bottom_navigation_bar/categories_screen.dart';
import 'package:sleek_floating_bottom_navigation_bar/home_screen.dart';
import 'package:sleek_floating_bottom_navigation_bar/play_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DateTime? currentBackPressTime;
  int selectedIndex = 2;
  bool isDarkMode = true;

  void _toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      CategoriesScreen(isDarkMode: isDarkMode),
      PlayScreen(isDarkMode: isDarkMode),
      HomeScreen(
        isDarkMode: isDarkMode,
        toggleDarkMode: _toggleDarkMode,
      ),
      AccountScreen(isDarkMode: isDarkMode),
      CartScreen(isDarkMode: isDarkMode),
    ];

    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            pages[selectedIndex],
            Positioned(
              bottom: 40,
              left: 2.5.w,
              child: Container(
                width: 95.w,
                padding: EdgeInsets.symmetric(vertical: 2.5.w),
                decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.24),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: navItems.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    return _buildNavItem(item['icon'], item['label'], index);
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    IconData icon,
    String label,
    int index,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.5.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                selectedIndex == index ? lightGreenColor : Colors.transparent,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
