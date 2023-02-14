import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const ['Mega_man', 'Metal Gear', 'Super Smash'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Type 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((gameOption) => ListTile(
                      title: Text(gameOption),
                      leading: const Icon(Icons.access_time_sharp),
                      trailing: const Icon(Icons.arrow_forward),
                    ))
                .toList(),
            const ListTile(
              leading: Icon(Icons.access_time_sharp),
              title: Text('Hello World'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ));
  }
}
