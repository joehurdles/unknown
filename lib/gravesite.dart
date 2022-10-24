import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class Gravesite extends StatefulWidget {
  const Gravesite({Key? key}) : super(key: key);

  @override
  State<Gravesite> createState() => GravesiteState();
}

class GravesiteState extends State<Gravesite> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Gravesite of German ...",
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
            height: 1380,
            width: 970,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/gravesite-of-german-missionaries.jpg',
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
          "The North German Missionary Society or North German Mission is a Presbyterian Christian organisation based in Bremen formed on 19 April 1836 to unify missionary work in North Germany. The society has also been active among the Ewes in southeastern Gold Coast, now Ghana. The mission was engaged in New Zealand and India prior to concentrating its activities in Ghana from 1847. This is where most German's that died were buried.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
