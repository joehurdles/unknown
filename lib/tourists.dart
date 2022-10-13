import 'package:flutter/material.dart';
import 'package:unknownpro/manhyia.dart';

class Tourist extends StatelessWidget {
  const Tourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unknown"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(7),
        child: Row(children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              child: ExpansionTile(
                  title: const Text(
                    "TOURISTS SITES",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  children: [
                    ListTile(
                      title: const Text(
                        "Manhyia Palace",
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Manhyia()));
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Kumasi Zoo",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Komfo Anokye's Sword",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Armed Forces Museum",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Rattray Park",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Owabi",
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
