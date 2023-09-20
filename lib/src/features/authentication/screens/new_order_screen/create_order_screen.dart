import 'package:flutter/material.dart';
import 'package:wine_monger/src/common_widgets/bottom_navig.dart';
import 'package:wine_monger/src/common_widgets/drawer.dart';
import 'package:wine_monger/src/common_widgets/floating_button.dart';
import 'package:wine_monger/src/features/authentication/screens/new_order_screen/tab_bar_screen.dart';

class CreateOrderScreen extends StatelessWidget {
  const CreateOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shape: const Border(
            bottom: const BorderSide(color: Colors.green, width: 2)),
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: const Text(
            "Create a new order",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        actions: [
          const Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),
      drawer:  DrawerWidget(),
      body: const TabBarClass(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButtonWidget(),
      bottomNavigationBar: const BottomNavigBar(),
    );
  }
}