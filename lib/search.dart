import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Replace this container with your Map widget
        body: Stack(children: <Widget>[
      Positioned(
        top: 10,
        right: 15,
        left: 15,
        child: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              IconButton(
                splashColor: Colors.grey,
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              const Expanded(
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      hintText: "Search..."),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text('A'),
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
