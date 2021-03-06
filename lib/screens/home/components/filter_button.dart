import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';

class FilterButton extends StatelessWidget {
  final String item;
  const FilterButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: defaultPadding, top: defaultPadding, bottom: defaultPadding),
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: Center(
          child: Text(
            item,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: darkColor,
        ),
      ),
    );
  }
}
