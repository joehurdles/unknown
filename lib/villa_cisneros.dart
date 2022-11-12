import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';
import 'package:unknownpro/villacisneros_directions.dart';

class VillaCisneros extends StatefulWidget {
  const VillaCisneros({Key? key}) : super(key: key);

  @override
  State<VillaCisneros> createState() => VillaCisnerosState();
}

class VillaCisnerosState extends State<VillaCisneros> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Villa Cisneros Resort",
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
          Center(
            child: Text.rich(
              TextSpan(
                  text: " ",
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Directions',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Directions16()));
                          }),
                  ]),
            ),
          ),
          Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: buildColumn(),
          ),
          SizedBox(
            height: 560,
            width: 400,
            child: Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Column(children: [
                Image.asset(
                  'assets/images/villa-Cisneros-resort-and spa.jpg',
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
          "Whether you dream of a romantic gateway or luxury vacation, a family vacation or fun-filled adventure, spiritual retreat and rejuvenation, or a total tune -up for your mind and body, there’s only one place where it all come together for you. A place where everything is tailored to you. It's Villa Cisneros Resort and Spa.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
