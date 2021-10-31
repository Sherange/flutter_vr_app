import 'package:flutter/material.dart';
import 'package:vr_app/constants/app_data.dart';
import 'package:vr_app/screens/home/components/filter_button.dart';

class FilterButtonList extends StatelessWidget {
  const FilterButtonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: filters.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return FilterButton(item: filters[index]);
          }),
    );
  }
}
