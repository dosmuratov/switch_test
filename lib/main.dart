import 'package:flutter/material.dart';
import 'package:switch_test/themes/themes.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: 'Switch test',
          home: const MyHomePage(),
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          darkTheme: Themes.darkTheme,
          theme: Themes.lightTheme,
        );
      },
    );
  }
}
