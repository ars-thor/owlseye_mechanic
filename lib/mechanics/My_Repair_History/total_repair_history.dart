import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalRepairHistory extends StatefulWidget {
  const TotalRepairHistory({Key? key}) : super(key: key);

  @override
  _TotalRepairHistoryState createState() => _TotalRepairHistoryState();
}

class _TotalRepairHistoryState extends State<TotalRepairHistory> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff29cccc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.car_rental,
                    size: 30,
                  ),
                  Text('Repair History',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              Text('Total 10 Repairs',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 180,
                width: 500,
                child: Card(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('14 April,2021',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tyre Changed',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('WagnoR MP04 CA2612',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: Text('₹500',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSzk3MpY38brDlKnQhA8qyJbhwybR7O2-x5w&usqp=CAU'),
                        width: 150,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 180,
                width: 500,
                child: Card(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('14 April,2021',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tyre Changed',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('WagnoR MP04 CA2612',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: Text('₹500',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSzk3MpY38brDlKnQhA8qyJbhwybR7O2-x5w&usqp=CAU'),
                        width: 150,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                width: 500,
                child: Card(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('14 April,2021',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tyre Changed',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('WagnoR MP04 CA2612',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: Text('₹500',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSzk3MpY38brDlKnQhA8qyJbhwybR7O2-x5w&usqp=CAU'),
                        width: 150,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
