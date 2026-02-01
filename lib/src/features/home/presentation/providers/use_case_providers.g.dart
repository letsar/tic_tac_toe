// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchCurrentGameSessionUseCase)
final fetchCurrentGameSessionUseCaseProvider =
    FetchCurrentGameSessionUseCaseProvider._();

final class FetchCurrentGameSessionUseCaseProvider
    extends
        $FunctionalProvider<
          FetchCurrentGameSessionUseCase,
          FetchCurrentGameSessionUseCase,
          FetchCurrentGameSessionUseCase
        >
    with $Provider<FetchCurrentGameSessionUseCase> {
  FetchCurrentGameSessionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchCurrentGameSessionUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchCurrentGameSessionUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchCurrentGameSessionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchCurrentGameSessionUseCase create(Ref ref) {
    return fetchCurrentGameSessionUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchCurrentGameSessionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchCurrentGameSessionUseCase>(
        value,
      ),
    );
  }
}

String _$fetchCurrentGameSessionUseCaseHash() =>
    r'6a919012f6eff2bd1931b164b1da59417090e359';

@ProviderFor(fetchStartingGameConfigurationUseCase)
final fetchStartingGameConfigurationUseCaseProvider =
    FetchStartingGameConfigurationUseCaseProvider._();

final class FetchStartingGameConfigurationUseCaseProvider
    extends
        $FunctionalProvider<
          FetchStartingGameConfigurationUseCase,
          FetchStartingGameConfigurationUseCase,
          FetchStartingGameConfigurationUseCase
        >
    with $Provider<FetchStartingGameConfigurationUseCase> {
  FetchStartingGameConfigurationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchStartingGameConfigurationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$fetchStartingGameConfigurationUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchStartingGameConfigurationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchStartingGameConfigurationUseCase create(Ref ref) {
    return fetchStartingGameConfigurationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchStartingGameConfigurationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<FetchStartingGameConfigurationUseCase>(value),
    );
  }
}

String _$fetchStartingGameConfigurationUseCaseHash() =>
    r'cb9144b9f52e99cad8641549af60646afd0dca6d';

@ProviderFor(startGameUseCase)
final startGameUseCaseProvider = StartGameUseCaseProvider._();

final class StartGameUseCaseProvider
    extends
        $FunctionalProvider<
          StartGameUseCase,
          StartGameUseCase,
          StartGameUseCase
        >
    with $Provider<StartGameUseCase> {
  StartGameUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startGameUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startGameUseCaseHash();

  @$internal
  @override
  $ProviderElement<StartGameUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StartGameUseCase create(Ref ref) {
    return startGameUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StartGameUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StartGameUseCase>(value),
    );
  }
}

String _$startGameUseCaseHash() => r'5dbe2774fa75a4ac7a7968938c3d23dc09116a94';
