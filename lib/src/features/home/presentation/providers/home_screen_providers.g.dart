// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentGameSessionController)
final currentGameSessionControllerProvider =
    CurrentGameSessionControllerProvider._();

final class CurrentGameSessionControllerProvider
    extends
        $AsyncNotifierProvider<
          CurrentGameSessionController,
          TicTacToeGameSession?
        > {
  CurrentGameSessionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentGameSessionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentGameSessionControllerHash();

  @$internal
  @override
  CurrentGameSessionController create() => CurrentGameSessionController();
}

String _$currentGameSessionControllerHash() =>
    r'eaae546db85553bd88c3ad41de4a32eb53e16dac';

abstract class _$CurrentGameSessionController
    extends $AsyncNotifier<TicTacToeGameSession?> {
  FutureOr<TicTacToeGameSession?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<TicTacToeGameSession?>, TicTacToeGameSession?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TicTacToeGameSession?>,
                TicTacToeGameSession?
              >,
              AsyncValue<TicTacToeGameSession?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(StartNewGameController)
final startNewGameControllerProvider = StartNewGameControllerProvider._();

final class StartNewGameControllerProvider
    extends
        $NotifierProvider<StartNewGameController, StartingGameConfiguration> {
  StartNewGameControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startNewGameControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startNewGameControllerHash();

  @$internal
  @override
  StartNewGameController create() => StartNewGameController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StartingGameConfiguration value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StartingGameConfiguration>(value),
    );
  }
}

String _$startNewGameControllerHash() =>
    r'1c97ed66e3f42f9a0cf73871e1b6effdca7f9010';

abstract class _$StartNewGameController
    extends $Notifier<StartingGameConfiguration> {
  StartingGameConfiguration build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<StartingGameConfiguration, StartingGameConfiguration>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<StartingGameConfiguration, StartingGameConfiguration>,
              StartingGameConfiguration,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
