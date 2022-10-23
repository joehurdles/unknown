import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class LagoonView extends StatefulWidget {
  const LagoonView({Key? key}) : super(key: key);

  @override
  State<LagoonView> createState() => LagoonViewState();
}

class LagoonViewState extends State<LagoonView> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Lagoon View Guest House",
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
            height: 750,
            width: 501,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/lagoon-view-guest-house.jpg',
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
          "Lagoon View Guest house, a guest house, is a property situated in Keta. Popular points of interest around the property include Fort Prinzenstein. There are open sleeping areas and 2 executive rooms with king size beds. Rooms are air-conditioned and with modern attached bathrooms. This property is an 80-minute drive from Keta Lagoon Protected Area. The venue is located 70 miles from Tema.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
