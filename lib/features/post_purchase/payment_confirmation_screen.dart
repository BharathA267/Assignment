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

class PaymentConfirmationScreen extends ConsumerStatefulWidget {
  PaymentConfirmationScreen({super.key});

  @override
  ConsumerState<PaymentConfirmationScreen> createState() =>
      PaymentConfirmationScreenContents();
}

class PaymentConfirmationScreenContents
    extends ConsumerState<PaymentConfirmationScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  bool showDocGen = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showDocGen = true;
      });
      animationController.repeat();
    });
    startDocGen();
  }

  startDocGen() async {
    Future.delayed(const Duration(seconds: 5), () {
      context.replaceNamed(AppRoute.signContract.name);
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
                showDocGen
                    ? SvgPicture.asset(Assets.illustrations.generatingDocs.path)
                    : SvgPicture.asset(Assets.illustrations.paymentDone.path),
                gapH16,
                showDocGen
                    ? Text(
                        'Generating Contract',
                        style: boldTextStyle(color: Colors.white, size: 16),
                      )
                    : Text(
                        'Payment done',
                        style: boldTextStyle(color: Colors.white, size: 16),
                      ),
                gapH16,
                Center(
                  child: Text(
                    'Your almost there!',
                    style: secondaryTextStyle(color: Colors.white, size: 12),
                  ),
                ),
                gapH4,
                Center(
                  child: Text(
                    'do not leave this page, or press the back button.',
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
