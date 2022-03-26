import 'package:flutter_practice/models/catalog.dart';

class CartModel {
  // static final cartModel = CartModel._internal();

  // CartModel._internal();

  // factory CartModel() => cartModel;

  //catalog fiels
  late CatalogModel _catalog;

  //collections of IDs - store Ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Items

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Items

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
