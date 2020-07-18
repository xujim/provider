
import 'package:provider_shopper/models/catalog.dart';

class CartModel2{
  final CatalogModel _catalog;
  final List<int> _itemIds;

  CartModel2(this._catalog, CartModel2 previous)
      : assert(_catalog != null),
        _itemIds = previous?._itemIds ?? [];

  /// An empty cart with no Catalog.
  CartModel2.empty()
      : _catalog = null,
        _itemIds = [];

  /// List of items in the cart.
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  /// The current total price of all items.
  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}