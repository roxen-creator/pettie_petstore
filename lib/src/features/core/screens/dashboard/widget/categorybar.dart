
import 'package:flutter/material.dart';

import '../../../../../constants/color_manager.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 50,
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cDarkColor,
            ),
            child: Center(
              child: Text(
                "35",
                style: txtTheme.displayMedium
                    ?.apply(color: Colors.white),
              ),
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dog",
                  style: txtTheme.displaySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "supplies",
                  style: txtTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}