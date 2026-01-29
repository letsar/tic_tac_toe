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
        $AsyncNotifierProvider<
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
}

String _$ticTacToeGameSessionControllerHash() =>
    r'910b9053a6dd3e3583a067d97a7d4ca7eecda839';

abstract class _$TicTacToeGameSessionController
    extends $AsyncNotifier<TicTacToeGameSession> {
  FutureOr<TicTacToeGameSession> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<TicTacToeGameSession>, TicTacToeGameSession>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TicTacToeGameSession>,
                TicTacToeGameSession
              >,
              AsyncValue<TicTacToeGameSession>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
