import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/core/data/services/local_storage_service.dart';

part 'core_providers.g.dart';

/// Provider for local storage service (SharedPreferences wrapper)
@riverpod
LocalStorageService localStorageService(Ref ref) {
  return LocalStorageService();
}
