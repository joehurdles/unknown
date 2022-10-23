import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class MeetLodge extends StatefulWidget {
  const MeetLodge({Key? key}) : super(key: key);

  @override
  State<MeetLodge> createState() => MeetLodgeState();
}

class MeetLodgeState extends State<MeetLodge> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Meet Me There Lodge",
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
            height: 721,
            width: 605,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/meet-me-there-lodge.jpg',
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
          "Meet Me There African Home  Lodge sits between the villages of Dzita and Dzita-Abledomi on the stunning coast of Ghana. They are closely involved with these two communities and during your stay they aim to introduce you to the way of life in rural Africa. They are a not-for-profit lodge which supports the work of their NGO ‘Dream Big Ghana’, a charity dedicated to improving sanitation, education and health care for local people.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
