import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/chillriver_directions.dart';
import 'package:unknownpro/tourists.dart';

class ChillRiverResort extends StatefulWidget {
  const ChillRiverResort({Key? key}) : super(key: key);

  @override
  State<ChillRiverResort> createState() => ChillRiverResortState();
}

class ChillRiverResortState extends State<ChillRiverResort> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Chill River Resort",
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
          Center(
            child: Text.rich(
              TextSpan(
                  text: " ",
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Directions',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Directions11()));
                          }),
                  ]),
            ),
          ),
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
                  'assets/images/The-Chill-River-Resort.jpg',
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
          "The Chill River Resort is an all-year sun-drenched holiday property offering luxury, privacy and an array of exciting activities. Surrender to tranquility during your stay in a Deluxe River View Room or a Paradise Chalet and indulge the trendy beach vibes in between. The Chill brings together all of the best amenities in one place. Swimming, kayaking, riding the waves to the estuary, exploring the nearby picturesque villages hidden in the mangrove, if all that is too much of breaking a sweat, have your senses revived at the eternal spa.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
