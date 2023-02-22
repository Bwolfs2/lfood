import 'package:flutter/material.dart';

class DrugStoreWidget extends StatefulWidget {
  const DrugStoreWidget({Key? key}) : super(key: key);

  @override
  State<DrugStoreWidget> createState() => _DrugStoreWidgetState();
}

class _DrugStoreWidgetState extends State<DrugStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text('Drug Stores'),
      ),
    );
  }
}
