// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gameRulesService)
final gameRulesServiceProvider = GameRulesServiceProvider._();

final class GameRulesServiceProvider
    extends
        $FunctionalProvider<
          GameRulesService,
          GameRulesService,
          GameRulesService
        >
    with $Provider<GameRulesService> {
  GameRulesServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameRulesServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameRulesServiceHash();

  @$internal
  @override
  $ProviderElement<GameRulesService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GameRulesService create(Ref ref) {
    return gameRulesService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameRulesService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameRulesService>(value),
    );
  }
}

String _$gameRulesServiceHash() => r'9f92bcbf8a2a93abee7ec9030df5271896ba27bc';

@ProviderFor(gameTurnService)
final gameTurnServiceProvider = GameTurnServiceProvider._();

final class GameTurnServiceProvider
    extends
        $FunctionalProvider<GameTurnService, GameTurnService, GameTurnService>
    with $Provider<GameTurnService> {
  GameTurnServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameTurnServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameTurnServiceHash();

  @$internal
  @override
  $ProviderElement<GameTurnService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GameTurnService create(Ref ref) {
    return gameTurnService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameTurnService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameTurnService>(value),
    );
  }
}

String _$gameTurnServiceHash() => r'4ec414e783ea54956f22d86c1e299f0fed0944b0';
