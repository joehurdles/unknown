import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class VumeClayDeposits extends StatefulWidget {
  const VumeClayDeposits({Key? key}) : super(key: key);

  @override
  State<VumeClayDeposits> createState() => VumeClayDepositsState();
}

class VumeClayDepositsState extends State<VumeClayDeposits> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Vume Clay Deposits",
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
          "What was once a way of life and source of income for many ethnic groups in Ghana, today is a form of art that has become one of the tourist attractions in Ghana. Vume, located in the Volta region, is one of them. Well known for its pottery making, Vume village is famous in part thanks to the abundant clay deposits which has inspired the women to go into this craft and became one of the major hobbies.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
