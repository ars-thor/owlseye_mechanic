import 'package:flutter/material.dart';

class Dashboardcard extends StatefulWidget {
  const Dashboardcard({Key? key}) : super(key: key);

  @override
  _DashboardcardState createState() => _DashboardcardState();
}

class _DashboardcardState extends State<Dashboardcard> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // card height
      child: PageView.builder(
        itemCount: 10,
        controller: PageController(viewportFraction: 0.7),
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Transform.scale(
            scale: i == _index ? 1 : 0.9,
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Card ${i + 1}",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
