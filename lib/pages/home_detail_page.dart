import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_practice/models/catalog.dart';
import 'package:flutter_practice/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.color(Colors.green).bold.xl2.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl2
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.description.text.color(Colors.grey).xl.make(),
                      10.heightBox,
                      "Eiusmod elit sint minim pariatu Et qui ipsum enim ex nulla enim cillum. derit voluptate. Id irure nisi proident dolore aliqua in anim labore tempor aliqua."
                          .text
                          .color(Vx.blue300)
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
