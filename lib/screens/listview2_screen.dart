import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const [
    'Mega_man',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Type 1'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[i];
            // ignore: avoid_print
            print(game);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
      // itemBuilder: (context, index) => Text('data'),
      // separatorBuilder: separatorBuilder,
    );
  }
}
