import 'package:flutter/material.dart';
//import 'package:owlseye_mechanic/mechanics/My_Repair_History/bills.dart';
import 'package:owlseye_mechanic/mechanics/My_Repair_History/total_repair_history.dart';

class RepairHistoryOptions extends StatefulWidget {
  @override
  State<RepairHistoryOptions> createState() => _RepairHistoryOptionsState();
}

class _RepairHistoryOptionsState extends State<RepairHistoryOptions> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TotalRepairHistory(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Bills',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff29cccc),
        onTap: _onItemTapped,
      ),
    );
  }
}
