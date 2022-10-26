import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class CocoBayResorts extends StatefulWidget {
  const CocoBayResorts({Key? key}) : super(key: key);

  @override
  State<CocoBayResorts> createState() => CocoBayResortsState();
}

class CocoBayResortsState extends State<CocoBayResorts> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cocobay Resort",
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
            height: 750,
            width: 500,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/cocobay-resort_.jpg',
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
          "Widely known as Antigua’s most romantic and relaxing resort, Cocobay offers the perfect Caribbean atmosphere for honeymoons, Romance filled vacations, unique Experiences, barefoot luxury and island style wellness. The resort consists of a colorful collection of pastel Cottages crowning a breezy hillside, winding down to two white sand beaches and miles of turquoise Caribbean Sea.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
