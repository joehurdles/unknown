import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/a_y_directions.dart';
import 'package:unknownpro/tourists.dart';

class AYWildCamp extends StatefulWidget {
  const AYWildCamp({Key? key}) : super(key: key);

  @override
  State<AYWildCamp> createState() => AYWildCampState();
}

class AYWildCampState extends State<AYWildCamp> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "A&Y Wild Camp Ghana",
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
                                    builder: (_) => Directions24()));
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
            height: 800,
            width: 460,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/ay.jpg',
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
          "Peaceful and welcoming atmosphere. Very clean and cosy place. Nice and confortable bedrooms. Good Italian food prepared by the Italian owner. A&Y Wild Camp Ghana offers accommodations in Keta. Guests at the property have access to 2 shared toilets and showers located near the rooms.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
