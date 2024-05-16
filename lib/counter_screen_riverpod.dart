import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:untitled_riverpod_vs_provider/counter_cubit.dart';
import 'package:untitled_riverpod_vs_provider/counter_view.dart';

part 'counter_screen_riverpod.g.dart';

@riverpod
CounterCubit counterCubit(CounterCubitRef ref) => CounterCubit();

@riverpod
Stream<int> counterStateStream(CounterStateStreamRef ref) => ref.watch(counterCubitProvider).stream;

@riverpod
int counterState(CounterStateRef ref) {
  final bloc = ref.watch(counterCubitProvider);
  final asyncValue = ref.watch(counterStateStreamProvider);
  return asyncValue.valueOrNull ?? bloc.state;
}

class CounterScreenRiverpod extends StatelessWidget {
  const CounterScreenRiverpod({super.key});

  void onTap(WidgetRef ref) => ref.read(counterCubitProvider).increment();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Consumer(
          builder: (context, ref, _) {
            final value = ref.watch(counterStateProvider);
            return CounterView(
              value: value,
              onTap: () => onTap(ref),
            );
          },
        ),
      );
}
