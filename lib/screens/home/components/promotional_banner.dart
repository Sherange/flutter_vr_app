import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.2,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Improved Controller \nDesign With \nVirtual Reality",
              style: TextStyle(
                  fontSize: 24,
                  height: 1.5,
                  color: bgColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0), color: primaryColor),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.06,
          right: -defaultPadding,
          child: Image.asset(
            'assets/images/vr_box.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
