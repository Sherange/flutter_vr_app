import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: const BackButton(
          color: bgColor,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: bgColor,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: primaryColor,
        child: Expanded(
          flex: 1,
          child: Center(
              child: Image.asset(
            'assets/images/vr_lens.png',
            fit: BoxFit.contain,
          )),
        ),
      ),
    );
  }
}
