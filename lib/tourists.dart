// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:unknownpro/a_y.dart';
import 'package:unknownpro/abgblor_lodge.dart';
import 'package:unknownpro/aborigines.dart';
import 'package:unknownpro/ahiekpors_villa.dart';
import 'package:unknownpro/artificial_island.dart';
import 'package:unknownpro/avu_angaw.dart';
import 'package:unknownpro/basel_missionaries.dart';
import 'package:unknownpro/bomigo_clay.dart';
import 'package:unknownpro/bulls_anchor.dart';
import 'package:unknownpro/chill_river.dart';
import 'package:unknownpro/cocobay_resort.dart';
import 'package:unknownpro/ekpeame_beach.dart';
import 'package:unknownpro/elibeach_resort.dart';
import 'package:unknownpro/emancipation_beach.dart';
import 'package:unknownpro/gobah_beach.dart';
import 'package:unknownpro/gobah_villa.dart';
import 'package:unknownpro/gravesite.dart';
import 'package:unknownpro/holy_trinity.dart';
import 'package:unknownpro/home_page.dart';
import 'package:unknownpro/kedzi_beach.dart';
import 'package:unknownpro/keta_lagoon.dart';
import 'package:unknownpro/ketabeach_hotel.dart';
import 'package:unknownpro/ketalag_resort.dart';
import 'package:unknownpro/lagoonview_guesthouse.dart';
import 'package:unknownpro/lighthouse.dart';
import 'package:unknownpro/meet_there_lodge.dart';
import 'package:unknownpro/nutefe_villa.dart';
import 'package:unknownpro/nuyi_lagoon.dart';
import 'package:unknownpro/prinzenstein.dart';
import 'package:unknownpro/royal_beach.dart';
import 'package:unknownpro/seva.dart';
import 'package:unknownpro/slave.dart';
import 'package:unknownpro/sogakope_beach.dart';
import 'package:unknownpro/somewhere.dart';
import 'package:unknownpro/togbe_tsali.dart';
import 'package:unknownpro/torkor_atorlia.dart';
import 'package:unknownpro/tsiame_military.dart';
import 'package:unknownpro/tsisa.dart';
import 'package:unknownpro/villa_amore.dart';
import 'package:unknownpro/villa_awoyo.dart';
import 'package:unknownpro/villa_cisneros.dart';
import 'package:unknownpro/volta_bridge.dart';
import 'package:unknownpro/volta_river.dart';
import 'package:unknownpro/volta_view.dart';
import 'package:unknownpro/vume_clay.dart';
import 'package:unknownpro/wenya.dart';
import 'package:unknownpro/wute_military.dart';

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
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
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
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SevaIsland()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AtorkorSlave()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VoltaRiver()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AvuAngaw()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Aboringines()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const KetaLagResort()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MeetLodge()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const KetaBeachHotel()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Emancipation()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AbgblorLodge()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ChillRiverResort()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const EliBeachResort()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LagoonView()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VoltaBridge()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                    context,
                    MaterialPageRoute(
                        builder: (_) => const VumeClayDeposits()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BaselMonument()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HolyTrinity()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VillaCisneros()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VoltaViewHotel()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                    context,
                    MaterialPageRoute(
                        builder: (_) => const VillaAwoyoResort()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SogakopeBeach()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Somewhere()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TorkorAtorlia()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Gravesite()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TogbeTsali()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TsiameMilitary()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const WuteMilitary()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: const Text(
              'Bomigo Clay Deposit',
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const BomigoClayDeposits()));
            },
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const NuyiLagoon()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
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
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ArtificialIsland()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Cocobay Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CocoBayResorts()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Ahiekpors Villa',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AhiekporsVilla()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Bulls and Anchor Inn',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BullsAnchor()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'A&Y Wild Camp Ghana',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AYWildCamp()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Ekpeame Beach Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const EkpeameBeach()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Tsisa Guest House',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TsisaGuestHouse()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Villa Amore Resort',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VillaAmore()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Royal Beach Keta',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const RoyalBeach()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                "Nutefe-Elloh's Villa",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const NutefeVilla()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Kedzi Beach',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const KedziBeach()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                'Gobah Beach',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GobahBeach()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListTile(
              title: const Text(
                "Gobah's Villa",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GobahVilla()));
              },
            ),
          ),
        ),
        const Divider(
          height: 0.2,
          thickness: 0.6,
          color: Colors.black38,
        ),
      ]),
    );
  }
}
