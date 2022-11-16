import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment/E-Com%20Ui/section_tile.dart';

class PopularProducts extends StatelessWidget {
  final demoProducts = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) {
                  if (demoProducts[index].isPopular) {
                    // components/product_card.dart
                    return ProductCard(product: demoProducts[index]);
                  }

                  return const SizedBox.shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}