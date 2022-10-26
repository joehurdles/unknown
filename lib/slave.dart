import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class AtorkorSlave extends StatefulWidget {
  const AtorkorSlave({Key? key}) : super(key: key);

  @override
  State<AtorkorSlave> createState() => AtorkorSlaveState();
}

class AtorkorSlaveState extends State<AtorkorSlave> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Atorkor Slave Market",
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
            height: 100,
            width: 40,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/Atorkor-Slave-Market.jpg',
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
          "In the days of the slave trade, Atorkor became an important slave market. As a result, a memorial was erected in one of Keta’s excellent technical colleges to remember the hardships of the slave’s journey. The memorial around the walls is a stark reminder of how the chiefs were tricked and bribed into allowing the westerners to take slaves from their tribes.",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
