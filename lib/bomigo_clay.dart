import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class BomigoClayDeposits extends StatefulWidget {
  const BomigoClayDeposits({Key? key}) : super(key: key);

  @override
  State<BomigoClayDeposits> createState() => BomigoClayDepositsState();
}

class BomigoClayDepositsState extends State<BomigoClayDeposits> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Bomigo Clay Deposits",
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
            height: 1080,
            width: 720,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/Vume-clay-deposits.jpg',
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
          "The clay deposit of five million metric tonnes on the Bomigo Island is estimated to last for about 50 years and have good plasticity. Apart from the huge clay deposits on the island, Mr Deque also spoke about tourism potentials in Bomigo that needs to be exploited.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}