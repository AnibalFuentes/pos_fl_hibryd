import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_secure_storage.g.dart';

@riverpod
FlutterSecureStorage flutterSecureStorage (Ref ref) {

  const androidOptions = AndroidOptions(
    encryptedSharedPreferences: true
  );

  const iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );
  return FlutterSecureStorage(
    aOptions: androidOptions,
    iOptions: iosOptions


  );
}