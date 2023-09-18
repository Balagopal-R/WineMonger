import 'package:flutter/material.dart';
import 'package:wine_monger/src/constants/image_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
   Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
              image: const AssetImage(kLogoImage),
              height: size.height * 0.4),
        ),
      ],
    );
  }
}