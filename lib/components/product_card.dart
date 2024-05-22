import 'package:flutter/material.dart';
import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../details/details_screen.dart';
import '../../products/products_screen.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            press: () {
              Navigator.pushNamed(context, ProductsScreen.routeName);
            },
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.75,
          ),
          itemCount: demoProducts.length,
          itemBuilder: (context, index) {
            if (demoProducts[index].isPopular) {
              return ProductCard(
                product: demoProducts[index],
                onPress: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(
                    product: demoProducts[index],
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
