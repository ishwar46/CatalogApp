import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "The Book Spot".text.xl3.bold.color(context.primaryColor).make(),
        "Trending Books".text.xl2.make(),
      ],
    );
  }
}
