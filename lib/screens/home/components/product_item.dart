import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';
import 'package:vr_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  final int index;
  const ProductItem({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: index == 0
            ? const EdgeInsets.fromLTRB(
                defaultPadding, 0, defaultPadding / 2, 0)
            : const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: MediaQuery.of(context).size.height * 0.3,
        width: 150,
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding / 4),
                  child: Image.network(
                    item.images.toString(),
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Text(
                        item.price,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: const Icon(
                Icons.add,
                color: bgColor,
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: secondryColor),
            ),
          )
        ]),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(20.0),
            ),
            color: darkColor),
      ),
    );
  }
}
