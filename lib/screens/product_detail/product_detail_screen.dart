import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isPanelOpen = false;
  @override
  Widget build(BuildContext context) {
    print(isPanelOpen);
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
        body: SlidingUpPanel(
          onPanelClosed: () {
            setState(() {
              isPanelOpen = false;
            });
          },
          onPanelOpened: () {
            setState(() {
              isPanelOpen = true;
            });
          },
          color: primaryColor,
          panel: Container(
            decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(20))),
            child: const Center(
              child: Text(
                "This is the sliding Widget",
                style: TextStyle(color: secondryColor),
              ),
            ),
          ),
          collapsed: Container(
            decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(20))),
            child: const Center(
              child: Text(
                "This is the collapsed Widget",
                style: TextStyle(color: secondryColor),
              ),
            ),
          ),
          body: Container(
            color: primaryColor,
            child: Center(
              child: Image.asset(
                'assets/images/vr_lens.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ));
  }
}
