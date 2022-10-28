import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class TsisaGuestHouse extends StatefulWidget {
  const TsisaGuestHouse({Key? key}) : super(key: key);

  @override
  State<TsisaGuestHouse> createState() => TsisaGuestHouseState();
}

class TsisaGuestHouseState extends State<TsisaGuestHouse> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Tsisa Guest House",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Tourist()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: buildColumn(),
          ),
          SizedBox(
            height: 300,
            width: 210,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/tsisa.jpg',
                  fit: BoxFit.cover,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: SizedBox(
              width: 10,
              height: 10,
            ),
          ),
        ),
        Text(
          "The hotel lies nearly 1 mile from the center of Keta, providing quick access to St. Michael Co-Cathedral. It is 2.3 miles away from Fort Prinzenstein. St. Peter Claver RC Church is within walking distance of this property. Every accommodation unit is equipped with multi-channel TV and a private toilet. All accommodation has a marble floor. A breakfast is served in the bar. No internet access available. No parking available. Number of rooms are 8.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
