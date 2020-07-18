import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider/provider.dart';

class CartEvent extends ChangeNotifier {
  CartEvent();

  void sendEvent(BuildContext context, int eventType, dynamic data){
    CartModel cart = Provider.of<CartModel>(context);
    if(eventType == 0){
      if(!cart.items.contains(data as Item)){
        cart.add(data as Item);
      }
      
    }

    notifyListeners();
  }

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Item item) {
    
  }
}