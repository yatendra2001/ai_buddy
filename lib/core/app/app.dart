import 'package:ai_buddy/core/app/di.dart';
import 'package:ai_buddy/core/app/style.dart';
import 'package:ai_buddy/core/navigation/router.dart';
import 'package:flutter/material.dart';

class ScalableFlutterApp extends StatelessWidget {
  const ScalableFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DI(
      child: MaterialApp.router(
        title: 'Scalable Flutter App Starter',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
