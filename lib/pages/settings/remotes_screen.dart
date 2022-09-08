import 'package:flutter/material.dart';

class RemotesScreen extends StatelessWidget {
  const RemotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.add),
          title: const Text("Add remote"),
          onTap: () {},
        ),
      ],
    );
  }
}
