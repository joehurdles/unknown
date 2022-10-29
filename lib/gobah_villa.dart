import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class GobahVilla extends StatefulWidget {
  const GobahVilla({Key? key}) : super(key: key);

  @override
  State<GobahVilla> createState() => GobahVillaState();
}

class GobahVillaState extends State<GobahVilla> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Gobah's Villa",
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
            height: 960,
            width: 960,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/gobahs_villa.png',
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
          "Gobah Villa on the Gobah Beach Road is an accommodation in Ghana which primary category is Holiday homes, cabins and resorts. Gobah villa is situated south of Volta Delta.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
