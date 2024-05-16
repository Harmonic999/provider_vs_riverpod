// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_screen_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterCubitHash() => r'03fa01d7472f0ce0c9e7caa43074d6dddd6a1cd9';

/// See also [counterCubit].
@ProviderFor(counterCubit)
final counterCubitProvider = AutoDisposeProvider<CounterCubit>.internal(
  counterCubit,
  name: r'counterCubitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterCubitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CounterCubitRef = AutoDisposeProviderRef<CounterCubit>;
String _$counterStateStreamHash() =>
    r'7e597c93933d78bfcfafffd988c9e44bcf4de4d7';

/// See also [counterStateStream].
@ProviderFor(counterStateStream)
final counterStateStreamProvider = AutoDisposeStreamProvider<int>.internal(
  counterStateStream,
  name: r'counterStateStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterStateStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CounterStateStreamRef = AutoDisposeStreamProviderRef<int>;
String _$counterStateHash() => r'1a21cb7c7e8aceac182e7b2ae9d012b4e33c6db3';

/// See also [counterState].
@ProviderFor(counterState)
final counterStateProvider = AutoDisposeProvider<int>.internal(
  counterState,
  name: r'counterStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CounterStateRef = AutoDisposeProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
