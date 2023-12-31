import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/screens/onboarding/company_policies.dart';
import 'package:mint_dentistry/screens/onboarding/onboarding_landing.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      routes: [
        GoRoute(
          path: "companyPolicies",
          builder: (
            context,
            state,
          ) =>
              CompanyPoliciesScreen(),
        )
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _router,
        theme: ThemeData(
          scaffoldBackgroundColor: LightThemeColors.background,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontFamily: 'Didot',
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Colors.black,
            ),
            iconTheme: IconThemeData(
              color: LightThemeColors.bodyDark,
              size: 24,
            ),
            backgroundColor: LightThemeColors.statusBar,
          ),
        ),
      ),
    );
  }
}
