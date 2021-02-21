import 'package:flutter/material.dart';

class LowerImageHolder extends StatelessWidget {
  const LowerImageHolder(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height * 0.2,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/images/movers-putting-boxes-into-a-moving-truck.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              splashColor: Colors.blueAccent,
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
