import 'package:flutter/material.dart';
import 'package:sesstion5/route/path.dart';
import 'package:sesstion5/route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: const Color(0xFFf5f8ff),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
      ),
      initialRoute: bottomNaBar,
      routes: routes,
    );
  }
}
