import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'routes.dart';
import 'theme_data.dart';
import './providers/nav_bar_state_provider.dart';

void main() {
  // Make status bar transparent.
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavBarStateProvider(),
      child: MaterialApp(
        title: 'Pabitbit Pabagahe Pabili (P3)',
        theme: themeData(),
        debugShowCheckedModeBanner: false,
        routes: myRoutes,
      ),
    );
  }
}
