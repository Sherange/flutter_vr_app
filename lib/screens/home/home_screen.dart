import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vr_app/constants/theme.dart';
import 'package:vr_app/screens/home/components/filter_button_list.dart';
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
          children: const [
            PromotionalText(),
            PromotionalBanner(),
            FilterButtonList(),
            ProductListView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: darkColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: bgColor,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            backgroundColor: bgColor,
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            backgroundColor: bgColor,
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: bgColor,
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: primaryColor,
        showSelectedLabels: false,
        onTap: (index) {},
      ),
    );
  }
}
