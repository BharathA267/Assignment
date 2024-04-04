import 'package:assignment/design_system/text_styles.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const CustomChip({
    Key? key,
    required this.text,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: isSelected ? primaryColor : chipBackgroundColor,
          elevation: 2,
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text, style: chipTextStyle(isSelected)),
          )),
    );
  }
}
