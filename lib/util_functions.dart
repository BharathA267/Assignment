import 'package:assignment/design_system/text_styles.dart';
import 'package:flutter/cupertino.dart';

import 'design_system/app_sizes.dart';

Widget getFormattedAmount(dynamic amount) {
  return Row(
    children: [
      Text('₹', style: secondaryTextStyle()),
      gapW4,
      Text('$amount', style: numericalTextStyle()),
    ],
  );
}

Widget getFormattedTenure(dynamic tenure) {
  return Row(
    children: [
      Text('$tenure', style: numericalTextStyle()),
      gapW4,
      Text('days', style: secondaryTextStyle()),
    ],
  );
}

Widget getFormattedPercentage(dynamic percentage) {
  return Row(
    children: [
      Text('$percentage', style: numericalTextStyle()),
      gapW4,
      Text('%', style: secondaryTextStyle()),
    ],
  );
}
