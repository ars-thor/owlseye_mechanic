import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/mechanics/Dashboard_part/dashboard.dart';
import 'package:owlseye_mechanic/mechanics/Employee/add_employee.dart';
import 'package:owlseye_mechanic/mechanics/My_Repair_History/repair_bottombar.dart';
import 'package:owlseye_mechanic/mechanics/Profile/mechanic_registration_form.dart';
import 'package:owlseye_mechanic/mechanics/spare_parts/spare_parts.dart';

import 'package:owlseye_mechanic/splash_screen.dart';

import 'mechanics/Banking/bank_details.dart';
import 'mechanics/login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/second':
        return MaterialPageRoute(builder: (_) => UserLogin());
      case '/third':
        return MaterialPageRoute(builder: (_) => MechanicsDashboard());
      case '/fourth':
        return MaterialPageRoute(builder: (_) => BankDetails());
      case '/fifth':
        return MaterialPageRoute(builder: (_) => MechanicsRegistration());
      case '/sixth':
        return MaterialPageRoute(builder: (_) => AddEmployee());
      case '/seventh':
        return MaterialPageRoute(builder: (_) => SpareParts());
      case '/eigth':
        return MaterialPageRoute(builder: (_) => RepairHistoryOptions());
      // case '/nine':
      //   return MaterialPageRoute(builder: (_) => SignUp());

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Error,Try Again'),
      ),
    );
  });
}
