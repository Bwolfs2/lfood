import 'package:flutter/material.dart';
import 'package:lfood/src/features/dashboard/views/pages/dashboard_page.dart';

import 'src/features/home/view/pages/home_page.dart';

void main() {
  runApp(const LFoodApp());
}

class LFoodApp extends StatelessWidget {
  const LFoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LFood',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}
