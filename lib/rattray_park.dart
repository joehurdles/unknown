import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class RattrayPark extends StatefulWidget {
  const RattrayPark({Key? key}) : super(key: key);

  @override
  State<RattrayPark> createState() => RattrayParkState();
}

class RattrayParkState extends State<RattrayPark> {
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
          "Rattray Park is a recreational and a modern amusement park located in Kumasi in the capital city of the Ashanti Region of Ghana. The park is near-immaculate: like a fairly standard park elsewhere in the world (manicured lawns, gardens, pathways, benches, playground), but unique for Ghana.",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
