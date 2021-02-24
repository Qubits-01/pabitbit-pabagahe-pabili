import 'package:flutter/material.dart';

class BuyMsdsCheckbox extends StatefulWidget {
  const BuyMsdsCheckbox();

  @override
  _BuyMsdsCheckboxState createState() => _BuyMsdsCheckboxState();
}

class _BuyMsdsCheckboxState extends State<BuyMsdsCheckbox> {
  // ignore: prefer_final_fields
  bool _availMsds = false;

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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _availMsds,
          onChanged: (bool newValue) {
            setState(() {
              _availMsds = newValue;
            });
          },
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
    );
  }
}
