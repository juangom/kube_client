import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed('add_cluster_form'),
          child: const Icon(Icons.add_box),
        ),
      ],
    );
  }
}
