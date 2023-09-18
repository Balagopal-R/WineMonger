import 'package:flutter/material.dart';
import 'package:wine_monger/src/common_widgets/bottom_navig.dart';
import 'package:wine_monger/src/common_widgets/drawer.dart';
import 'package:wine_monger/src/common_widgets/floating_button.dart';
import 'package:wine_monger/src/constants/image_strings.dart';
import 'package:wine_monger/src/features/authentication/screens/dashboard_screen/dashboard_grid.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shape: const Border(
            bottom: const BorderSide(color: Color(0xffCAE3A8), width: 2)),
        elevation: 2,
        backgroundColor: Colors.white,
        title: Center(
          
          child: Text(
            "Dashboard",
            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
           Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              width: 15,
              height: 15,
              child: Image.asset(ktopNavBell)
              )
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: const DashBoardGrid(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButtonWidget(),
      bottomNavigationBar: const BottomNavigBar(),
    );
  }
}