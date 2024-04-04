import 'package:assignment/design_system/app_sizes.dart';
import 'package:assignment/design_system/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../app_router.dart';
import '../../design_system/colors.dart';
import '../../gen/assets.gen.dart';

class DealSuccessScreen extends ConsumerStatefulWidget {
  DealSuccessScreen({super.key});

  @override
  ConsumerState<DealSuccessScreen> createState() => DealSuccessScreenContents();
}

class DealSuccessScreenContents extends ConsumerState<DealSuccessScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    navigateToHomeScreen();
  }

  navigateToHomeScreen() async {
    Future.delayed(const Duration(seconds: 2), () {
      //toDo : navigate to home screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.illustrations.finish.path),
                gapH16,
                Text(
                  'All Done!',
                  style: boldTextStyle(color: Colors.white, size: 16),
                ),
                gapH16,
                Center(
                  child: Text(
                    'Redirecting to home screen',
                    style: secondaryTextStyle(color: Colors.white, size: 12),
                  ),
                ),
              ],
            ),
            Lottie.asset(
              'assets/animations/Flow 1.json',
              controller: animationController,
              onLoaded: (composition) {
                animationController
                  ..duration = composition.duration
                  ..forward();
              },
            )
          ],
        ));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
