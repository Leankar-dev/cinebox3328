// vai ser um async state do Riverpod

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_user_logged_command.g.dart';

@riverpod
class CheckUserLoggedCommand extends _$CheckUserLoggedCommand {
  @override
  Future<bool?> build() async {
    return null;
  }

  Future<void> execute() async {
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 3));
    state = AsyncData(true);
  }
}
