import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/mechanics/Dashboard_part/component/horizontal_scroll_ui.dart';
import 'package:owlseye_mechanic/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Dashboardcard(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
