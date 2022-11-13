import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';
import 'package:unknownpro/voltaview_directions.dart';

class VoltaViewHotel extends StatefulWidget {
  const VoltaViewHotel({Key? key}) : super(key: key);

  @override
  State<VoltaViewHotel> createState() => VoltaViewHotelState();
}

class VoltaViewHotelState extends State<VoltaViewHotel> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Volta View Hotel",
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
                                    builder: (_) => Directions36()));
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
            height: 1920,
            width: 1080,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/Volta-view-hotel.jpg',
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
          "They are situated on a 12.6-acre land overlooking the Volta Lake (the second largest man-made lake in the world) and the Akosombo hydroelectric dam. Volta Hotel is definitely a haven of comfort, hospitality, and natural beauty. The Volta Hotel in Ghana provides a fantastic view of the lake, dam, and adjoining mountain slope. We offer Standard and Twin Rooms, as well as Private Villas and Executive Suites. Each dwelling gives a vibe of sophisticated elegance and complete relaxation.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
