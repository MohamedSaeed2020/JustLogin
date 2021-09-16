import 'dart:io';

import 'package:cashier/presentation/login/login_screen.dart';
import 'package:cashier/presentation/login/login_screen_desk.dart';
import 'package:cashier/presentation/login/login_screen_tablet.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isWindows){
    await DesktopWindow.setMinWindowSize(Size(350.0,650.0,));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenTypeLayout(
        mobile: LoginScreen(),
        desktop: LoginScreenDeskTop(),
        tablet: LoginScreenTablet(),
        breakpoints: ScreenBreakpoints(
            watch: 200.0,
            tablet: 400.0,
            desktop: 650.0
        ),
      ),
    );
  }
}

