// neste arquivo, vamos centralizar todas as dependencias de service, Riverpod da camada de services

import 'package:cinebox_app/data/services/local_storage/local_storage_service.dart';
import 'package:cinebox_app/data/services/local_storage/local_storage_service_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_providers.g.dart';

@Riverpod(keepAlive: true)
LocalStorageService localStorageService(Ref ref) {
  return LocalStorageServiceImpl(
    flutterSecureStorage: FlutterSecureStorage(),
  );
}
