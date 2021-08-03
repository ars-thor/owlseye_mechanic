import 'package:flutter/material.dart';

void main() => runApp(AddBankAccount());

class AddBankAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Add Bank Details')),
            body: Center(
                child: Container(
                    height: 100,
                    child: SingleChildScrollView(child: ListSearch())))));
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "SBI",
    "Bank of Baroda",
    "Central Bank of India",
    "Bank of India",
    "Canara Bank",
    "Bank of Maharastra",
    "Punjab National Bank",
    "Union Bank of India",
    "Bank of India",
    "Dena Bank",
    "Allahabad Bank",
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: () => print(data),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
