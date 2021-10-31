import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding,
        ),
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: const Text(
          "All Product",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: darkColor,
        ),
      ),
    );
  }
}
