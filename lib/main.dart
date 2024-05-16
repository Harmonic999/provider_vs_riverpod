import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled_riverpod_vs_provider/counter_screen_provider.dart';
import 'package:untitled_riverpod_vs_provider/counter_screen_riverpod.dart';

import 'counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: RootScreen()),
      ),
      GoRoute(
        path: '/counter-screen-provider',
        pageBuilder: (context, state) => MaterialPage(
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: const CounterScreenProvider(),
          ),
        ),
      ),
      GoRoute(
        path: '/counter-screen-riverpod',
        pageBuilder: (context, state) => const MaterialPage(child: CounterScreenRiverpod()),
      ),
    ],
  );

  /// [ProviderScope] for riverpod
  @override
  Widget build(BuildContext context) => ProviderScope(
        child: MaterialApp.router(
          routerConfig: router,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      );
}

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Root Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.push('/counter-screen-provider'),
                child: const Text('Counter Screen Provider'),
              ),
              ElevatedButton(
                onPressed: () => context.push('/counter-screen-riverpod'),
                child: const Text('Counter Screen Riverpod'),
              ),
            ],
          ),
        ),
      );
}
