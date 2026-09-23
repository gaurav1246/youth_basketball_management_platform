import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_basketball_mng/core/localization/locale_provider.dart';
import 'package:youth_basketball_mng/l10n/app_localizations.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocaleProvider>();
    return MaterialApp(
      title: 'Basketball Departmental Management',
      locale: localeProvider.locale,

      supportedLocales: const [Locale('en'), Locale('he')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: SplashScreen(),
    );
  }
}
