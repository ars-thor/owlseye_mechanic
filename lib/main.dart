import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/mechanics/My_Repair_History/total_repair_history.dart';
import 'package:owlseye_mechanic/route_generator.dart';

import 'mechanics/spare_parts/spare_parts.dart';

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
      // home: TotalRepairHistory(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
