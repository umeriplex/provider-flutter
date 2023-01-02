import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satate_management_one/providers/auth_provider.dart';
import 'package:satate_management_one/providers/count_provider.dart';
import 'package:satate_management_one/providers/example_one_provider.dart';
import 'package:satate_management_one/providers/favourite_provider.dart';
import 'package:satate_management_one/screens/count_sxample.dart';
import 'package:satate_management_one/screens/example_one.dart';

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
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
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

