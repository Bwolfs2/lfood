import 'package:flutter/material.dart';

class PetStoresWidget extends StatefulWidget {
  const PetStoresWidget({Key? key}) : super(key: key);

  @override
  State<PetStoresWidget> createState() => _PetStoresWidgetState();
}

class _PetStoresWidgetState extends State<PetStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text('Pet Stores'),
      ),
    );
  }
}
