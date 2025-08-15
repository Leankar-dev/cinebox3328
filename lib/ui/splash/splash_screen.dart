import 'package:cinebox_app/ui/core/themes/resource.dart';
import 'package:cinebox_app/ui/core/widgets/loader_and_messages.dart';
import 'package:cinebox_app/ui/splash/commands/check_user_logged_command.dart';
import 'package:cinebox_app/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with LoaderAndMessages {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashViewModelProvider).checkLoginAndRedirect();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(checkUserLoggedCommandProvider, (_, next) {
      next.whenOrNull(
        // loading: () => showLoader(),
        data: (data) {
          final path = switch (data) {
            true => '/home',
            false => 'login',
            _ => '',
          };

          if (path.isNotEmpty && context.mounted) {
            // hideLoader();
            Navigator.pushNamedAndRemoveUntil(context, path, (route) => false);
          }
        },
        error: (error, stackTrace) {
          if (context.mounted) {
            // hideLoader();
            showErrorSnackBar('Erro ao verificar login');
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login',
              (route) => false,
            );
          }
        },
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            R.ASSETS_IMAGES_BG_LOGIN_PNG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            constraints: BoxConstraints.expand(),
            color: Colors.black.withAlpha(170),
          ),
          Center(
            child: Image.asset(R.ASSETS_IMAGES_LOGO_PNG),
          ),
        ],
      ),
    );
  }
}
