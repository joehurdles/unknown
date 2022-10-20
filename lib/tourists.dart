import 'package:flutter/material.dart';
import 'package:unknownpro/home_page.dart';
import 'package:unknownpro/keta_lagoon.dart';
import 'package:unknownpro/lighthouse.dart';
import 'package:unknownpro/prinzenstein.dart';
import 'package:unknownpro/wenya.dart';

class Tourist extends StatelessWidget {
  const Tourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "TOURISTS SITES",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Wenya Vudo',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Fort Prinzenstein',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Prinzenstein()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Cape St. Paul Lighthouse',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LightHouse()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Seva Island',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Atorkor Slave Market',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Keta Lagoon',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const KetaLagoon()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Volta River Estuary ',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Avu and Angaw Lagoon',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Aborigines Beach Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Keta Lagoon Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Meet Me There Lodge',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Keta Beach Hotel',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Emancipation Beach',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Abgblor Lodge',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'The Chill River Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Eli Beach Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Lagoon View Guest House',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Lower Volta Bridge',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Vume Clay Deposits',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Basel Missionaries Monument',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Holy Trinity Spa And Health Farms',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Villa Cisneros Resort And Spa',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Volta View Hotel',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Villa Awoyo Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Sogakope Beach Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Somewhere in Sogakope',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Torkor Atorlia Site',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Gravesite of German Missionaries',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Togbe Tsali Forest',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Tsiame Military Camp',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Military Camp Wute',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Kporkporgbor',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Cape',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Bomigo Clay Deposit',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Nuyi and Lagoon Confluence',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Artificial Island',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Klevi Forest',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Dodu Island',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Wenya()));
              },
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 0.2,
            thickness: 0.6,
            color: Colors.black38,
          ),
        ),
      ]),
    );
  }
}
