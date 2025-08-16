import 'package:cinebox_app/config/result/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import './local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  final FlutterSecureStorage _flutterSecureStorage;

  LocalStorageServiceImpl({required FlutterSecureStorage flutterSecureStorage})
    : _flutterSecureStorage = flutterSecureStorage;

  @override
  Future<Result<String>> getIdToken() async {
    final idToken = await _flutterSecureStorage.read(key: 'id_Token');
    if (idToken != null) {
      return Success(idToken);
    }
    return Failure(Exception('ID Token not found'), null);
  }

  @override
  Future<Result<Unit>> removeIdToken() async {
    await _flutterSecureStorage.delete(key: 'id_Token');
    return successOfUnit();
  }

  @override
  Future<Result<Unit>> saveIdToken(String idToken) async {
    await _flutterSecureStorage.write(key: 'id_Token', value: idToken);
    return successOfUnit();
  }
}
