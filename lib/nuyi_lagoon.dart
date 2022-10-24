import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class VumeClayDeposits extends StatefulWidget {
  const VumeClayDeposits({Key? key}) : super(key: key);

  @override
  State<VumeClayDeposits> createState() => VumeClayDepositsState();
}

class VumeClayDepositsState extends State<VumeClayDeposits> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Nuyi - Lagoon Confluence",
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
            height: 3650,
            width: 2800,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/nuyi-and-lagoon-confluence.jpeg',
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
          "Nuyi Lagoon (Nuyi Lagoon) is a lake (class H - Hydrographic) in Ghana (general), Ghana (Africa) with the region font code of Africa/Middle East. It is located at an elevation of 46 meters above sea level. Nuyi Lagoon is also known as Nogui Lagoon, Nugui Lagoon, Nuyi Lagoon.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
