// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tic_tac_toe_game_session_controller.dart';

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
    r'c4a73f2a537ba77f2c2ae7ada3e64ae524e38843';

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
