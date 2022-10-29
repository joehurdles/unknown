import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class RoyalBeach extends StatefulWidget {
  const RoyalBeach({Key? key}) : super(key: key);

  @override
  State<RoyalBeach> createState() => RoyalBeachState();
}

class RoyalBeachState extends State<RoyalBeach> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Royal Beach Keta",
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
            height: 550,
            width: 410,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/royal-beach.jpg',
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
          "Royal Beach Keta is headquartered in Volta. It is an accommodation in Ghana. Royal Beach Keta is situated nearby to Fort Prinzenstein, and close to Volta Delta. ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
