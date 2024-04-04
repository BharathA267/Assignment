import 'package:assignment/design_system/text_styles.dart';
import 'package:assignment/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

const double toolbarHeight = 90;

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, this.title, this.onPressed});

  final String? title;
  Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      flexibleSpace: Container(),
      toolbarHeight: toolbarHeight,
      title: Text(title ?? '',style: appBarTextStyle()),
      leading: IconButton(
        icon: SizedBox(
            width: 36,
            height: 36,
            child: SvgPicture.asset(Assets.icons.backButton.path)),
        onPressed: () => {onPressed},
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => _PreferredAppBarSize(toolbarHeight, 0);
}

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
            (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}
