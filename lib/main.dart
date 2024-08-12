import 'package:flutter/material.dart';
import 'package:x_o/screens/log_in_screen.dart';
import 'package:x_o/screens/xo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LogInScreen.routeName,
      routes: {
        LogInScreen.routeName : (context) =>const LogInScreen(),
        XoScreen.routeName : (context) =>const XoScreen(),
  },
    );
  }
}
