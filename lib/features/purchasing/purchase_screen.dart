import 'package:assignment/design_system/custom_widgets/custom_app_bar.dart';
import 'package:assignment/design_system/text_styles.dart';
import 'package:assignment/features/purchasing/purchasing_service.dart';
import 'package:assignment/features/purchasing/validator.dart';
import 'package:assignment/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:go_router/go_router.dart';

import '../../app_router.dart';
import '../../design_system/app_sizes.dart';
import '../../design_system/colors.dart';
import '../../design_system/custom_widgets/async_value_widget.dart';
import '../../gen/assets.gen.dart';
import '../../models/investment_details_response.dart';
import 'calculations.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final data = ref.watch(purchasingProvider);
        return AsyncValueWidget<InvestmentDetailsResponse>(
          value: data,
          data: (data) => PurchaseContents(
            data: data,
          ),
        );
      },
    );
  }
}

class PurchaseContents extends ConsumerStatefulWidget {
  final InvestmentDetailsResponse data;

  const PurchaseContents({
    super.key,
    required this.data,
  });

  @override
  ConsumerState<PurchaseContents> createState() => PurchaseScreenContents();
}

class PurchaseScreenContents extends ConsumerState<PurchaseContents> {
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double? totalReturns;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Purchasing',
                  style: boldTextStyle(),
                ),
                gapH8,
                Row(
                  children: [
                    Text(widget.data.investorName, style: secondaryTextStyle()),
                    gapW4,
                    SvgPicture.asset(Assets.icons.backIcon.path),
                    gapW4,
                    Text(widget.data.investedIn, style: secondaryTextStyle()),
                  ],
                ),
                gapH24,
                customDivider(),
                gapH24,
                Center(child: textField()),
                gapH24,
                customDivider(),
                gapH8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Returns', style: secondaryTextStyle()),
                    totalReturns != null
                        ? getFormattedAmount(totalReturns)
                        : Text('-', style: secondaryTextStyle()),
                  ],
                ),
                gapH8,
                customDivider(),
                gapH8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Net Yield', style: secondaryTextStyle()),
                    getFormattedPercentage(widget.data.netYield),
                  ],
                ),
                gapH8,
                customDivider(),
                gapH8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tenure', style: secondaryTextStyle()),
                    getFormattedTenure(widget.data.tenure),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Balance: ₹1,00,000', style: secondaryTextStyle()),
                      Text('Required: ₹0', style: secondaryTextStyle())
                    ],
                  ),
                  gapH8,
                  SwipeButton(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      activeThumbColor: primaryColor,
                      activeTrackColor: chipBackgroundColor,
                      child: Text(
                        'SWIPE TO PAY',
                        style: boldTextStyle(),
                      ),
                      onSwipe: () {
                        if (formKey.currentState!.validate()) {
                          context.pushNamed(AppRoute.paymentConfirmation.name);
                        }
                      }),
                ],
              )),
        ));
  }

  Widget textField() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Enter Amount', style: secondaryTextStyle()),
            IntrinsicWidth(
                child: TextFormField(
              textAlign: TextAlign.center,
              controller: controller,
              style: boldTextStyle(size: 24),
              keyboardType: TextInputType.number,
              onChanged: (enteredAmount) {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    totalReturns = calculateTotalReturn(
                        double.parse(enteredAmount),
                        widget.data.netYield,
                        widget.data.minimumInvestmentAmount);
                  });
                }
              },
              validator: (enteredAmount) => validateAmount(
                  double.parse(enteredAmount ?? 0.toString()),
                  widget.data.minimumInvestmentAmount),
              decoration: InputDecoration(
                errorMaxLines: 2,
                prefixIcon: Text(
                  '₹ ',
                  style: secondaryTextStyle(size: 24),
                ),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
                hintText: 'Min ${widget.data.minimumInvestmentAmount}',
                hintStyle: secondaryTextStyle(size: 24),
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget customDivider() {
    return const Divider(
      thickness: 1,
      color: borderColor,
    );
  }
}
