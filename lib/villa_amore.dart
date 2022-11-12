import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';
import 'package:unknownpro/villaamore_directions.dart';

class VillaAmore extends StatefulWidget {
  const VillaAmore({Key? key}) : super(key: key);

  @override
  State<VillaAmore> createState() => VillaAmoreState();
}

class VillaAmoreState extends State<VillaAmore> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Villa Amore Resort",
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
                                    builder: (_) => Directions22()));
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
            height: 1080,
            width: 610,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/villa-amore.jpg',
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
          "Villa Amore Keta is a lovely get away! It's just about a 3-minute from the peaceful beaches. This was our second time in Keta and lodging at Villa Amore was the best decision. The rooms are lovely, the staff are welcoming and the owners and managers make great efforts so that guests enjoy their stay. The food is delicious. Hint: definitely order banku/akple with okra soup and thank me later! Enjoy your stay.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
