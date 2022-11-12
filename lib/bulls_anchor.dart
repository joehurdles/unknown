import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/bullsanchor_directions.dart';
import 'package:unknownpro/tourists.dart';

class BullsAnchor extends StatefulWidget {
  const BullsAnchor({Key? key}) : super(key: key);

  @override
  State<BullsAnchor> createState() => BullsAnchorState();
}

class BullsAnchorState extends State<BullsAnchor> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Bulls and Anchor Inn",
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
                                    builder: (_) => Directions23()));
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
            height: 1280,
            width: 760,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/bulls_anchor.jpg',
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
          "Bulls And Anchor Inn Hotel is a 5-star venue set just 0.8 miles from Anloga Market. The accommodation comprises 9 rooms.Bulls and Anchor Inn is a great choice for a stay in Anloga. You can splash around at the indoor pool, grab a bite to eat at the coffee shop/cafe or unwind with a drink at the bar/lounge.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
