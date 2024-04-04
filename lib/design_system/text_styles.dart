import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle boldTextStyle({double? size, Color? color}) {
  return TextStyle(
    fontSize: size ?? 18,
    color: color ?? primaryTextColor,
    fontWeight: FontWeight.w700,
  );
}

TextStyle primaryTextStyle() {
  return const TextStyle(
    fontSize: 18,
    color: secondaryTextColor,
    fontWeight: FontWeight.w600,
  );
}

TextStyle secondaryTextStyle({double? size, Color? color}) {
  return TextStyle(
    fontSize: size ?? 14,
    color: color ?? secondaryTextColor,
    fontWeight: FontWeight.w400,
  );
}

TextStyle numericalTextStyle() {
  return const TextStyle(
    fontSize: 16,
    color: numericalTextColor,
    fontWeight: FontWeight.w500,
  );
}

TextStyle appBarTextStyle() {
  return const TextStyle(
    fontSize: 14,
    color: primaryColor,
    fontWeight: FontWeight.w500,
  );
}

TextStyle chipTextStyle(bool isSelected) {
  return TextStyle(
    fontSize: 10,
    color: isSelected ? Colors.white : secondaryTextColor,
    fontWeight: FontWeight.w500,
  );
}

TextStyle buttonTextStyle() {
  return const TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}

TextStyle errorTextStyle() {
  return const TextStyle(
    fontSize: 12,
    color: errorColor,
    fontWeight: FontWeight.w400,
  );
}
