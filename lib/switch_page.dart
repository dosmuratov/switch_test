import 'package:flutter/material.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: isDarkMode
            ? const Text(
                'Пока Мир',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            : const Text(
                'Привет Мир',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
      ),
    );
  }
}
