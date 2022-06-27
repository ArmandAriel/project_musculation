import 'package:project_musculation/Views/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}
