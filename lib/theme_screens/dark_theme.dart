import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satate_management_one/providers/theme_provider.dart';




class DarkTheme extends StatefulWidget {
  const DarkTheme({Key? key}) : super(key: key);

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeMode.themeMode,
              onChanged: themeMode.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: const Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeMode.themeMode,
              onChanged: themeMode.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: const Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeMode.themeMode,
              onChanged: themeMode.setTheme
          ),
        ],
      ),
    );
  }
}
