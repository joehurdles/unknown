import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class TorkorAtorlia extends StatefulWidget {
  const TorkorAtorlia({Key? key}) : super(key: key);

  @override
  State<TorkorAtorlia> createState() => TorkorAtorliaState();
}

class TorkorAtorliaState extends State<TorkorAtorlia> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Torkor Atorlia Site",
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
            height: 500,
            width: 330,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/torkor-atorlia-site.jpg',
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
          "In the olden days, you dare not misbehave or be a disobedient child or else, you will find yourself at a place called “Torkor Atorlia” Which means the fifth river side. Here, you will be buried alive with your head left outside. Vultures will come and feed on your eyes since your hands are all locked up in the grave.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
