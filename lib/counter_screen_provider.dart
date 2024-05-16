import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled_riverpod_vs_provider/counter_view.dart';

import 'counter_cubit.dart';

class CounterScreenProvider extends StatelessWidget {
  const CounterScreenProvider({super.key});

  void onTap(BuildContext context) => context.read<CounterCubit>().increment();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => CounterView(
            value: state,
            onTap: () => onTap(context),
          ),
        ),
      );
}
