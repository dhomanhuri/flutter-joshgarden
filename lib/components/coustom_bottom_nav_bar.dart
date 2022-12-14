import 'package:evelynapp/screen/dashboard/dashboard.dart';
import 'package:evelynapp/screen/historyScreen/HistoryScreen.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';

import 'package:evelynapp/enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.date_range,
                color: MenuState.home == selectedMenu
                    ? Colors.grey
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.history,
                color: MenuState.home == selectedMenu
                    ? Colors.grey
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
