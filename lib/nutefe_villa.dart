import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class NutefeVilla extends StatefulWidget {
  const NutefeVilla({Key? key}) : super(key: key);

  @override
  State<NutefeVilla> createState() => NutefeVillaState();
}

class NutefeVillaState extends State<NutefeVilla> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Nutefe-Elloh's Villa",
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
            height: 720,
            width: 580,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  "assets/images/Nutefe-Elloh's-Villa.jpg",
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
          "Nutefe-Elloh's-Villa, Ghana is located in the Keta district now Municipal of Ghana. ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
