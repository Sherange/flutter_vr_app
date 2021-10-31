import 'package:flutter/material.dart';
import 'package:vr_app/models/product.dart';
import 'package:vr_app/screens/home/components/product_item.dart';
import 'package:vr_app/services/api_service.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: FutureBuilder(
          future: ApiService().fetchProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<Product> list = snapshot.data as List<Product>;

              return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, index) {
                    return ProductItem(item: list[index], index: index);
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
