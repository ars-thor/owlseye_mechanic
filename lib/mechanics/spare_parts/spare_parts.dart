import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpareParts extends StatefulWidget {
  const SpareParts({Key? key}) : super(key: key);

  @override
  _SparePartsState createState() => _SparePartsState();
}

class _SparePartsState extends State<SpareParts> {
  int _index = 0;
  @override
  // setState((){
  //   _index++;
  // });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text(""),
        elevation: 0.0,
        backgroundColor: Color(0xff29cccc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
      body: Container(
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
                Text('Spare Parts',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text('Suspension',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              width: 600,
              child: PageView.builder(
                itemCount: 10,
                controller: PageController(viewportFraction: 0.8),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          children: [
                            Image(
                                image: NetworkImage(
                                    'https://4.imimg.com/data4/AL/SK/MY-25234228/silent-block-bushes-250x250-250x250.jpg')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spare Parts",
                              style: TextStyle(
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Stearing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              width: 500, // card height
              child: PageView.builder(
                itemCount: 10,
                controller: PageController(viewportFraction: 0.8),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          children: [
                            Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3gITxlVyazUb3ZqQS9pRbjOua743tGYF4BA&usqp=CAU')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spare Parts",
                              style: TextStyle(
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('New Product',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              width: 500, // card height
              child: PageView.builder(
                itemCount: 10,
                controller: PageController(viewportFraction: 0.85),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          children: [
                            Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEddzWoA7MvDClgs8KAmvOppeoHJLja_cwA&usqp=CAU')),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Text(
                              "Silent Block Bushes",
                              style: TextStyle(
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
