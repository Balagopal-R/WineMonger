import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff717F5E),
      child: const Icon(
        Icons.add,
        size: 49,
      ),
      onPressed: () {
        
      },
    );
  }
}