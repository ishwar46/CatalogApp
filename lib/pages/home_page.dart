import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/core/store.dart';
import 'package:flutter_practice/models/cart.dart';
import 'dart:convert';
import 'package:flutter_practice/models/catalog.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:flutter_practice/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_practice/widgets/home_widgets/catalog_list.dart';
//import 'package:flutter_practice/widgets/drawer.dart';
//import 'package:flutter_practice/widgets/item_widget.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Ishwar";

  final url = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, store, status) => FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor:
              context.theme.floatingActionButtonTheme.backgroundColor,
          child: Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
          ),
        ).badge(
            color: Vx.gray600,
            size: 20,
            count: _cart.items.length,
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py12().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
