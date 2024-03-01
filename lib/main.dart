import 'package:flutter/material.dart';
import 'package:world_clock/Utils/nav_bar.dart';

import 'Views/stop_watch.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
    home: NavBar(),
    //   routes: {
    //     '/': (context) => const NavBar(),
    //   },
     );
  }
}
