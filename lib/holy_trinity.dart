import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class HolyTrinity extends StatefulWidget {
  const HolyTrinity({Key? key}) : super(key: key);

  @override
  State<HolyTrinity> createState() => HolyTrinityState();
}

class HolyTrinityState extends State<HolyTrinity> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Holy Trinity Spa And ...",
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
            height: 1200,
            width: 700,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/Holy-trinity-spa-and-health-farms.jpg',
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
          "The Holy Trinity SPA & Health farm is the Integrative Health Department of the multiple award – winning Holy Trinity Medical Centre Accra – Ghana. The SPA is situated in a quiet, beautiful natural surrounding spreading along Ghana’s biggest river thus the Volta River. It is impressively designed and decorated in calm vegetation green colours. The relaxing environment is a complete change from every day stress and strains of life. The natural ambiance, cool breeze from the Volta River, chirping of several species of birds, enables a person to switch off into a relaxed mode. The minimum effect you receive from the SPA is to lift the human spirit, enhance the feel – good factor and enable you to reflect on life with celestial bliss and clarity.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
