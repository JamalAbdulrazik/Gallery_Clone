import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery_clone/themes/gallery_theme_data.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gallery Clone',
      theme: GalleryThemeData.lightThemeData,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}

