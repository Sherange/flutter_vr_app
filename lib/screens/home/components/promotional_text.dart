import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';

class PromotionalText extends StatelessWidget {
  const PromotionalText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Text(
        "Enjoy the world \ninto virtual reality",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 24,
          height: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
