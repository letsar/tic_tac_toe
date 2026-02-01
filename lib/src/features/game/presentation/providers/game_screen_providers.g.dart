// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicTacToeGameSessionController)
final ticTacToeGameSessionControllerProvider =
    TicTacToeGameSessionControllerProvider._();

final class TicTacToeGameSessionControllerProvider
    extends
        $NotifierProvider<
          TicTacToeGameSessionController,
          TicTacToeGameSession
        > {
  TicTacToeGameSessionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticTacToeGameSessionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticTacToeGameSessionControllerHash();

  @$internal
  @override
  TicTacToeGameSessionController create() => TicTacToeGameSessionController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicTacToeGameSession value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicTacToeGameSession>(value),
    );
  }
}

String _$ticTacToeGameSessionControllerHash() =>
    r'a1e7e15dc5855d50619b24d265b26413755a0a43';

abstract class _$TicTacToeGameSessionController
    extends $Notifier<TicTacToeGameSession> {
  TicTacToeGameSession build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TicTacToeGameSession, TicTacToeGameSession>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TicTacToeGameSession, TicTacToeGameSession>,
              TicTacToeGameSession,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
