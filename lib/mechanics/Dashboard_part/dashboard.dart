import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MechanicsDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xff29cccc),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Text('Our Services In Side Menu'),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff29cccc),
            // image: DecorationImage(
            //     fit: BoxFit.scaleDown, image: AssetImage('images/icon.jpg')),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              'Owlseye',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // backgroundColor: Colors.grey
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.input),
          title: Text('Welcome'),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.verified_user),
          title: Text('Profile'),
          onTap: () => {Navigator.of(context).pushNamed('/fifth')},
        ),
        // ignore: prefer_const_constructors
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Employee'),
          onTap: () => {Navigator.of(context).pushNamed('/sixth')},
        ),
        ListTile(
          leading: Icon(Icons.save),
          title: Text('Banking'),
          onTap: () => {Navigator.of(context).pushNamed('/fourth')},
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text('Spare Parts'),
          onTap: () => {Navigator.of(context).pushNamed('/seventh')},
        ),
        ListTile(
          leading: Icon(Icons.car_repair_rounded),
          title: Text('My Repair History'),
          onTap: () => {Navigator.of(context).pushNamed('/eigth')},
        ),
        ListTile(
          leading: Icon(Icons.local_offer),
          title: Text('Offer'),
          // onTap: () => {Navigator.of(context).pushNamed('/fifth')},
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          // onTap: () => {Navigator.of(context).pushNamed('/second')},
        ),
      ]),
    );
  }
}
