import 'package:flutter/foundation.dart';

import '../providers/order_item_provider.dart';

class OrderItemsProvider with ChangeNotifier {
  List<OrderItemProvider> _orderItems;

  List<OrderItemProvider> get orderItems {
    return [..._orderItems];
  }
}
