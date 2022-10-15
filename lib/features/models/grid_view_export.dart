

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewExport extends StatelessWidget {
  const GridViewExport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: [
          Text('My name is Riyad'),
          Text("My name is Fahad"),
        ],
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}