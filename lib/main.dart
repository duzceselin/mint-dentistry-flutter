import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/screens/onboarding/onboarding_landing.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (
        BuildContext context,
        GoRouterState state,
      ) {
        return OnboardingLandingScreen();
      },
      // routes: [
      //   GoRoute(
      //     path: "login",
      //     builder: (context, state) => const LoginScreen(),
      //   )
      // ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        scaffoldBackgroundColor: LightThemeColors.background,
      ),
    );
  }
}
