import 'package:flutter/material.dart';

import 'lower_card_info_box_title.dart';

class LowerCardInfoBox extends StatelessWidget {
  const LowerCardInfoBox();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const LowerCardInfoBoxTitle(),
            Text(
              'All your booked orders can be found here.',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                color: Colors.black54,
              ),
            ),
            const Divider(),
            const Text(
              'Last Updated: 2 mins ago',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
