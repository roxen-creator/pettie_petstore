import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants/color_manager.dart';

class CaratoryCard extends StatelessWidget {
  const CaratoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 50,
            width: 170,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cDarkColor,
                  ),
                  child: Center(
                      child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.dog,
                        color: Colors.white.withOpacity(1)),
                    onPressed: () {
                      // Add your cart functionality here
                    },
                  )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Dog Supplies"),
                      Text.rich(TextSpan(text: "Explore")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}