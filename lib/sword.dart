import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class Sword extends StatefulWidget {
  const Sword({Key? key}) : super(key: key);

  @override
  State<Sword> createState() => SwordState();
}

class SwordState extends State<Sword> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            height: 100,
            width: 40,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/1car.png',
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
          "3.	The ‘immovable’ Sword driven into the ground by Okomfo Anokye remains and is venue of the Okomfo Anokye Teaching Hospital. History has it that the sword was pushed into the ground, almost 300 years ago. It is believed the Okomfo pronounced that no one would be able to remove the sword, and so it has remained in spite of attempts. The Ashanti state, it is believed, would collapse should the sword ever be pulled out of the ground.",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
