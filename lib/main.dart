import 'package:car_buddy/utils/routes/on_route_settings.dart';
import 'package:car_buddy/utils/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      onGenerateRoute: onGenerateRoute,
    );
  }
}