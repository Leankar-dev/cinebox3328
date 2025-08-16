import 'package:cinebox_app/config/result/result.dart';

abstract interface class LocalStorageService {
  Future<Result<Unit>> saveIdToken(String idToken);
  Future<Result<String>> getIdToken();
  Future<Result<Unit>> removeIdToken();
}
