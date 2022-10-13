import 'package:flutter/material.dart';

class Zoo extends StatefulWidget {
  const Zoo({Key? key}) : super(key: key);

  @override
  State<Zoo> createState() => ZooState();
}

class ZooState extends State<Zoo> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "The Zoo Palace (Akan language meaning Oman hyia thus gathering of the people) is the seat of the Asantehene of Asanteman, as well as his official residence.[1] It is located at Kumasi, the capital of the Ashanti Region. The first palace is now a museum. Otumfuor Opoku Ware II built the new palace, which is close to the old one and is used by the current Asantehene, Otumfuor Osei Tutu II.",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}