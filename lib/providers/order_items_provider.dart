import 'package:flutter/foundation.dart';

import '../models/order_item_model.dart';

class OrderItemsProvider with ChangeNotifier {
  List<OrderItemModel> _orderItems;

  List<OrderItemModel> get orderItems {
    return [..._orderItems];
  }
}
