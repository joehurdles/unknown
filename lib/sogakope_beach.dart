import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class SogakopeBeach extends StatefulWidget {
  const SogakopeBeach({Key? key}) : super(key: key);

  @override
  State<SogakopeBeach> createState() => SogakopeBeachState();
}

class SogakopeBeachState extends State<SogakopeBeach> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sogakope Beach Resort",
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
            height: 1280,
            width: 720,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/Sogakope-beach-resort.jpg',
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
          "Sogakope Beach Resort is more than just an elegant beach resort, it is the pride of Sogakope in the Volta Region of Ghana and its set in a rich and tranquil gardens with the famous Volta River on its doorstep.  Where indulgence meets relaxation, this new purpose built resort offers a peaceful and relaxed lifestyle in a well-designed grounds and facilities with a true African feel yet modern.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
