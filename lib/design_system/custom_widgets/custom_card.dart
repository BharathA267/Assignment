import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../app_sizes.dart';
import '../text_styles.dart';

class CustomCard extends StatelessWidget {
  final String? header;
  final String text;
  final Widget headerIcon;
  final Widget? actionIcon;

  const CustomCard({
    Key? key,
    this.header,
    required this.text,
    required this.headerIcon,
    this.actionIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 48, height: 48, child: headerIcon),
            if (header != null) ...[
              gapH16,
              Text(header!, style: boldTextStyle(size: 14))
            ],
            gapH16,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(child: Text(text, style: secondaryTextStyle())),
                gapW8,
                if (actionIcon != null)
                  SizedBox(width: 24, height: 24, child: actionIcon)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HighlightsCard extends StatelessWidget {
  final String text;

  const HighlightsCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        text: text, headerIcon: SvgPicture.asset(Assets.icons.highlites.path));
  }
}
