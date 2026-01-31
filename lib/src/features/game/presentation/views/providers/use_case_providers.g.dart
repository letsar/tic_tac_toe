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

@ProviderFor(makeMoveUseCase)
final makeMoveUseCaseProvider = MakeMoveUseCaseProvider._();

final class MakeMoveUseCaseProvider
    extends
        $FunctionalProvider<MakeMoveUseCase, MakeMoveUseCase, MakeMoveUseCase>
    with $Provider<MakeMoveUseCase> {
  MakeMoveUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'makeMoveUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$makeMoveUseCaseHash();

  @$internal
  @override
  $ProviderElement<MakeMoveUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MakeMoveUseCase create(Ref ref) {
    return makeMoveUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MakeMoveUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MakeMoveUseCase>(value),
    );
  }
}

String _$makeMoveUseCaseHash() => r'98c4c03eadf5e3cdf9a301049e33e96e14b42f46';

@ProviderFor(resetGameSession)
final resetGameSessionProvider = ResetGameSessionProvider._();

final class ResetGameSessionProvider
    extends
        $FunctionalProvider<
          ResetGameSessionUseCase,
          ResetGameSessionUseCase,
          ResetGameSessionUseCase
        >
    with $Provider<ResetGameSessionUseCase> {
  ResetGameSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetGameSessionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetGameSessionHash();

  @$internal
  @override
  $ProviderElement<ResetGameSessionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ResetGameSessionUseCase create(Ref ref) {
    return resetGameSession(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResetGameSessionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResetGameSessionUseCase>(value),
    );
  }
}

String _$resetGameSessionHash() => r'9dc6f7cd5ac9e17e758394b3e9236348d9c360d8';
