import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  final VoidCallback onTap;
  final int value;

  const CounterView({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$value'),
            ElevatedButton(
              onPressed: () => onTap(),
              child: const Text('Increment'),
            ),
          ],
        ),
      );
}
