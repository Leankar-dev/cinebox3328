import 'package:cinebox_app/ui/core/themes/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.ASSETS_IMAGES_LOGO_PNG),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
              },
              child: const Text('Login with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
