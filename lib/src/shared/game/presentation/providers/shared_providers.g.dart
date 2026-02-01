// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for the game repository
///
/// This repository is shared between multiple features:
/// - home: to check if a game is in progress
/// - game: to save/load game sessions

@ProviderFor(gameRepository)
final gameRepositoryProvider = GameRepositoryProvider._();

/// Provider for the game repository
///
/// This repository is shared between multiple features:
/// - home: to check if a game is in progress
/// - game: to save/load game sessions

final class GameRepositoryProvider
    extends $FunctionalProvider<GameRepository, GameRepository, GameRepository>
    with $Provider<GameRepository> {
  /// Provider for the game repository
  ///
  /// This repository is shared between multiple features:
  /// - home: to check if a game is in progress
  /// - game: to save/load game sessions
  GameRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameRepositoryHash();

  @$internal
  @override
  $ProviderElement<GameRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GameRepository create(Ref ref) {
    return gameRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameRepository>(value),
    );
  }
}

String _$gameRepositoryHash() => r'd3def552fd5d9c0a780833daf15f7571d4378b66';
