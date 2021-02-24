import 'package:flutter/material.dart';

class LowerCardInfoBoxTitle extends StatelessWidget {
  const LowerCardInfoBoxTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              child: Text(
                'Your Orders ',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                ),
              ),
            ),
          ),
          const Icon(Icons.list_alt_outlined),
        ],
      ),
    );
  }
}
