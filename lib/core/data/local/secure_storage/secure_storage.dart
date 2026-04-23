import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pos_fl_hibryd/core/data/local/secure_storage/flutter_secure_storage.dart';
import 'package:pos_fl_hibryd/core/data/local/secure_storage/isecure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'secure_storage.g.dart';


@riverpod
ISecureStorage secureStorage (Ref ref) {

  final secureStorage = ref.watch(flutterSecureStorageProvider);
  return SecureStorage(secureStorage);
}

final class SecureStorage implements ISecureStorage {
  final FlutterSecureStorage _secureStorage;
  SecureStorage(this._secureStorage);

  @override
  Future<void> delete({required String key}) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> read({required String key}) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> write({required String key, required String value}) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      rethrow;
    }
  }
}
