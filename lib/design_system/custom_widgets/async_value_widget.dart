import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget(
      {super.key, required this.value, required this.data, this.loading});

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? loading;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: false,
      data: data,
      error: (e, st) => Container(),//todo Handle error here
      loading: () =>
          loading ?? const Center(child: CircularProgressIndicator()),
    );
  }
}
