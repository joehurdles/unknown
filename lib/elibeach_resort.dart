import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class EliBeachResort extends StatefulWidget {
  const EliBeachResort({Key? key}) : super(key: key);

  @override
  State<EliBeachResort> createState() => EliBeachResortState();
}

class EliBeachResortState extends State<EliBeachResort> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Eli Beach Resort",
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
            height: 2560,
            width: 1440,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/eli-beach-resort.jpg',
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
          "Eli Boutique Hotel and Beach Resort, the unique and delightful experience you have always imagined awaits you! The perfect choice for those looking for hotel and adventure in Ghana. Located at Tegbi-Aklamanstse, on a lush, private island amid verdant tropical foliage with its iconic palm trees standing tall against the brilliant blue sky, the view is fresh and green and the air crackles with possibility.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
