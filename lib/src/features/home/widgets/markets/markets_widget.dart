import 'package:flutter/material.dart';

class MarketsWidget extends StatefulWidget {
  const MarketsWidget({Key? key}) : super(key: key);

  @override
  State<MarketsWidget> createState() => _MarketsWidgetState();
}

class _MarketsWidgetState extends State<MarketsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Markets'),
      ),
    );
  }
}
