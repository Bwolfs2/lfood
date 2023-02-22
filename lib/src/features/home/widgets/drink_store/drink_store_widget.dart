import 'package:flutter/material.dart';

class DrinkStoresWidget extends StatefulWidget {
  const DrinkStoresWidget({Key? key}) : super(key: key);

  @override
  State<DrinkStoresWidget> createState() => _DrinkStoresWidgetState();
}

class _DrinkStoresWidgetState extends State<DrinkStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text('Drink Stores'),
      ),
    );
  }
}
