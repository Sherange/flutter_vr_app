import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vr_app/constants/theme.dart';
import 'package:vr_app/screens/home/components/filter_button.dart';
import 'package:vr_app/screens/home/components/product_list_view.dart';
import 'package:vr_app/screens/home/components/promotional_banner.dart';
import 'package:vr_app/screens/home/components/promotional_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Icon(
              Icons.dehaze_rounded,
              color: secondryColor,
              size: 26,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Icon(
                Icons.search,
                color: secondryColor,
                size: 26,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: secondryColor,
                size: 26,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PromotionalText(),
            const PromotionalBanner(),
            Row(
              children: const [FilterButton(), FilterButton()],
            ),
            const ProductListView(),
          ],
        ),
      ),
    );
  }
}
