import 'package:flutter/material.dart';
import 'package:sesstion5/screen/BottomNavigationBar.dart';
import 'package:sesstion5/screen/Welcome.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.path: (context) => const Welcome(),
  BottomTab.path: (context) => const BottomTab(),
};
