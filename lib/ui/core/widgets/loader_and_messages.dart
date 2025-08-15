import 'package:cinebox_app/ui/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin LoaderAndMessages<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return Center(
            child: LoadingAnimationWidget.threeArchedCircle(
              color: Colors.white,
              size: 60,
            ),
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  void showErrorSnackBar(String message) =>
      _showSnackBar(message, AppColors.error);

  void showSuccessSnackBar(String message) =>
      _showSnackBar(message, AppColors.successColor);

  void showInfoSnackBar(String message) =>
      _showSnackBar(message, AppColors.infoColor);
}
