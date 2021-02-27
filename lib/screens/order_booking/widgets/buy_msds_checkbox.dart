import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_item_provider.dart';

class BuyMsdsCheckbox extends StatefulWidget {
  const BuyMsdsCheckbox();

  @override
  _BuyMsdsCheckboxState createState() => _BuyMsdsCheckboxState();
}

class _BuyMsdsCheckboxState extends State<BuyMsdsCheckbox> {
  OrderItemProvider _orderItemProvider;
  // ignore: prefer_final_fields
  bool _availMsds = false;

  @override
  void initState() {
    super.initState();

    _orderItemProvider = Provider.of<OrderItemProvider>(context, listen: false);
    _availMsds = _orderItemProvider.isMsds;
  }

  Future<void> _showMsdsPrice(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('MSDS Price'),
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 25, top: 10, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '1 copy of Material Safety Data Sheet (MSDS) cost ¥ 300',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _toggleCheckbox() {
    _orderItemProvider.isMsds = !_orderItemProvider.isMsds;

    setState(() {
      _availMsds = !_availMsds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleCheckbox,
      child: Row(
        children: <Widget>[
          Checkbox(
            value: _availMsds,
            onChanged: (bool _newValue) => _toggleCheckbox(),
          ),
          Expanded(
            child: Text(
              'Mark check if you want to avail MSDS from us.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.info_outline,
              size: 20,
              color: Colors.black54,
            ),
            onPressed: () => _showMsdsPrice(context),
          ),
        ],
      ),
    );
  }
}
