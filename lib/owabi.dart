import 'package:flutter/material.dart';
import 'package:unknownpro/tourists.dart';

class Owabi extends StatefulWidget {
  const Owabi({Key? key}) : super(key: key);

  @override
  State<Owabi> createState() => OwabiState();
}

class OwabiState extends State<Owabi> {
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
          "Owabi Wildlife Sanctuary is a bird sanctuary, located in Kumasi, Ghana. It is home to many butterflies, over 140 species of birds, monkeys and the more reclusive bushpig, bushbuck and antelope. The region is rich with indigenous birds and some migrants. There are about 161 kinds of birds. The sanctuary is also the only inland Ramsar Convention site in the country of Ghana. Owabi Wildlife Sanctuary, Kumasi can also be suitable for arranging picnics and bird watching",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
