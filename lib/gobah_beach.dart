import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/gobahbeach_directions.dart';
import 'package:unknownpro/tourists.dart';

class GobahBeach extends StatefulWidget {
  const GobahBeach({Key? key}) : super(key: key);

  @override
  State<GobahBeach> createState() => GobahBeachState();
}

class GobahBeachState extends State<GobahBeach> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Gobah Beach",
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
                                    builder: (_) => Directions28()));
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
            height: 960,
            width: 960,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/gobah_beach.jpg',
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
          "Gobah Beach is an accommodation in Ghana. Gobah Beach is situated south of Volta Delta. Gobah Beach primary category is Holiday homes, cabins and resorts. It is located on a small portion of land sandwiched between the Atlamtic ocean and the Keta lagoon. Due to it serenity human settlements have sprung rapidly over the past decade as tourism in the locality seems to be rising fast.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
