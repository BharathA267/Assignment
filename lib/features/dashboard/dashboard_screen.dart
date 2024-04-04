import 'package:assignment/design_system/app_sizes.dart';
import 'package:assignment/design_system/custom_widgets/custom_card.dart';
import 'package:assignment/design_system/custom_widgets/custom_primary_button.dart';
import 'package:assignment/design_system/text_styles.dart';
import 'package:assignment/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../app_router.dart';
import '../../design_system/colors.dart';
import '../../design_system/custom_widgets/async_value_widget.dart';
import '../../design_system/custom_widgets/custom_app_bar.dart';
import '../../design_system/custom_widgets/custom_chip.dart';
import '../../gen/assets.gen.dart';
import '../../models/matrices_enum.dart';
import 'dashboard_service.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final data = ref.watch(dashboardProvider);
        return AsyncValueWidget<DashboardScreenData>(
          value: data,
          data: (data) => DashboardContents(
            data: data,
          ),
        );
      },
    );
  }
}

class DashboardContents extends ConsumerStatefulWidget {
  final DashboardScreenData data;

  const DashboardContents({
    super.key,
    required this.data,
  });

  @override
  ConsumerState<DashboardContents> createState() => DashboardScreenContents();
}

class DashboardScreenContents extends ConsumerState<DashboardContents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Back to Deals',
        onPressed: () => {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(Assets.icons.appIcon.path),
                ),
              ),
              gapH16,
              Row(
                children: [
                  Text(widget.data.investmentDetailsResponse.investorName,
                      style: boldTextStyle()),
                  gapW4,
                  SvgPicture.asset(Assets.icons.backIcon.path),
                  gapW4,
                  Text(widget.data.investmentDetailsResponse.investedIn,
                      style: primaryTextStyle())
                ],
              ),
              gapH8,
              Text(
                'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
                style: secondaryTextStyle(),
              ),
              gapH16,
              investmentDetailsCard(),
              gapH24,
              customDivider(),
              gapH24,
              Text(
                'Clients',
                style: boldTextStyle(),
              ),
              gapH8,
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                  gapW16,
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                  gapW16,
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                ],
              ),
              gapH16,
              Text(
                'Backed By',
                style: boldTextStyle(),
              ),
              gapH8,
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                  gapW16,
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                  gapW16,
                  SvgPicture.asset(Assets.icons.googleIcon.path),
                ],
              ),
              gapH24,
              customDivider(),
              gapH24,
              Text(
                'Highlights',
                style: boldTextStyle(),
              ),
              gapH8,
              const HighlightsCard(
                text:
                    'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
              ),
              gapH24,
              customDivider(),
              gapH24,
              Text(
                'Key Metrics',
                style: boldTextStyle(),
              ),
              gapH16,
              keyMatrix(),
              gapH16,
              financials(),
              gapH24,
              customDivider(),
              gapH24,
              Text(
                'Documents',
                style: boldTextStyle(),
              ),
              gapH24,
              CustomCard(
                  text:
                      'All the legalese surrounding this deal and how it relates to you.',
                  headerIcon: SvgPicture.asset(Assets.icons.docIcon.path),
                  header: 'Invoice Discounting Contract',
                  actionIcon: SvgPicture.asset(Assets.icons.downloadIcon.path)),
              gapH16,
              CustomCard(
                  text:
                      'Read more about the company and see how they pitch to investors.',
                  headerIcon: SvgPicture.asset(Assets.icons.pitchDeckIcon.path),
                  header: 'Company Pitch Deck',
                  actionIcon: SvgPicture.asset(Assets.icons.downloadIcon.path)),
              gapH64
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'FILLED',
                      style: secondaryTextStyle(),
                      children: [
                        TextSpan(text: '\n30%', style: boldTextStyle()),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomPrimaryButton(
                      text: 'Tap to Invest',
                      onPressed: () {
                        context.pushNamed(AppRoute.purchase.name);
                      }),
                ),
              ],
            )),
      ),
    );
  }

  Widget investmentDetailsCard() {
    return Table(
      border: TableBorder.all(
          color: borderColor, borderRadius: BorderRadius.circular(8)),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MIN INVT', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedAmount(widget
                        .data.investmentDetailsResponse.minimumInvestmentAmount)
                  ],
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('TENURE', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedTenure(
                        widget.data.investmentDetailsResponse.tenure),
                  ],
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NET YIELD', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedPercentage(
                        widget.data.investmentDetailsResponse.netYield),
                  ],
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('RAISED', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedPercentage(widget
                        .data.investmentDetailsResponse.raisedAmountPercentage),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget keyMatrix() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: MatricesEnum.matricesOptions().map((task) {
          return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CustomChip(
                text: task.value,
                isSelected: (MatricesEnum.financials == task),
                onTap: () {
                  //todo: implement the logic
                },
              ));
        }).toList(),
      ),
    );
  }

  Widget financials() {
    return Table(
      border: TableBorder.all(
          color: borderColor, borderRadius: BorderRadius.circular(8)),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ACTIVE DEALS', style: secondaryTextStyle()),
                    gapH8,
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${widget.data.financialsResponse.activeDeals}',
                            style: boldTextStyle(),
                          ),
                          TextSpan(
                            text:
                                ' of ${widget.data.financialsResponse.totalDeals}',
                            style: primaryTextStyle(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('RAISED', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedAmount(
                        widget.data.financialsResponse.raisedAmount),
                  ],
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MATURED DEALS', style: secondaryTextStyle()),
                    gapH8,
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${widget.data.financialsResponse.maturedDeals}',
                            style: boldTextStyle(),
                          ),
                          TextSpan(
                            text:
                                ' of ${widget.data.financialsResponse.totalDeals}',
                            style: primaryTextStyle(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ON TIME PAYMENT', style: secondaryTextStyle()),
                    gapH8,
                    getFormattedPercentage(
                        widget.data.financialsResponse.onTimePayment),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget customDivider() {
    return const Divider(
      thickness: 1,
      color: borderColor,
    );
  }
}
