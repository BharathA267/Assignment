import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_router.dart';
import '../../design_system/custom_widgets/custom_primary_button.dart';
import '../../gen/assets.gen.dart';

class SignContractScreen extends StatelessWidget {
  SignContractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(Assets.mockDocument.mockContract.path),
            ],
          )),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: CustomPrimaryButton(
            text: 'Sign Contract',
            onPressed: () {
              context.pushNamed(AppRoute.finish.name);
            })
      ),
    );
  }
}