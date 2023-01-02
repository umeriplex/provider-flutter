import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satate_management_one/providers/auth_provider.dart';
import 'package:satate_management_one/providers/count_provider.dart';
import 'package:satate_management_one/providers/example_one_provider.dart';
import 'package:satate_management_one/providers/favourite_provider.dart';
import 'package:satate_management_one/providers/theme_provider.dart';
import 'package:satate_management_one/screens/count_sxample.dart';
import 'package:satate_management_one/screens/example_one.dart';
import 'package:satate_management_one/theme_screens/dark_theme.dart';

import 'change_state/notify_listner_change.dart';
import 'favorites/favourite_screen.dart';
import 'home_screen.dart';
import 'logiin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
<<<<<<< HEAD
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Builder(
        builder: (BuildContext context){
          final theme = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: theme.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.brown,
              iconTheme: const IconThemeData(
                  color: Colors.black54
              ),
            ),
            theme: ThemeData(
              primarySwatch: Colors.green,
                brightness: Brightness.light,
              iconTheme: const IconThemeData(
                color: Colors.orange
              ),
            ),
            home: NotifyChangeListeners(),
          );
        },
=======
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
>>>>>>> 8e88ad8ad75b5e2200bfca7ddbb56d164f57c1a0
      ),
    );
  }
}

// ---------------------------this is only for single class provider--------------------
// return ChangeNotifierProvider(
// create: (_) => CountProvider(),
// child: MaterialApp(
// title: 'Flutter Demo',
// theme: ThemeData(
// primarySwatch: Colors.blue,
// ),
// home: const ExampleOneScreen(),
// ),
// );

