import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class VillaAwoyoResort extends StatefulWidget {
  const VillaAwoyoResort({Key? key}) : super(key: key);

  @override
  State<VillaAwoyoResort> createState() => VillaAwoyoResortState();
}

class VillaAwoyoResortState extends State<VillaAwoyoResort> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Villa Awoyo Resort",
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
            height: 700,
            width: 700,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/villa-awoyo-resort.jpg',
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
          "Situated on 5 acres of land, Villa Awoyo is a private 5 bedroom guesthouse originally built in 1958. The property is located on the banks of the Volta River in Sogakope, Ghana. The villa was restored in 2017 to create a family friendly, serene riverside retreat. Villa Awoyo features bright and spacious air conditioned bedrooms, a comfortable lounge and multiple dining areas for single or several families.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
