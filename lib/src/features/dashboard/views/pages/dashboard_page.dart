import 'package:flutter/material.dart';
import 'package:lfood/src/features/home/view/pages/home_page.dart';
import 'package:lfood/src/features/profile/views/pages/profile_page.dart';
import 'package:lfood/src/features/search/views/pages/search_page.dart';
import 'package:pepperoni/pepperoni.dart';
import 'package:lfood/src/features/order/view/pages/order_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          SearchPage(),
          OrderPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: PepperoniBottomBar(
        onIndexSelected: (index) => pageController.jumpToPage(index),
        items: [
          PepperoniBottomBarItem(
              icon: Icons.home_outlined,
              activeIcon: Icons.home_filled,
              label: 'Início'),
          PepperoniBottomBarItem(
            icon: Icons.search_outlined,
            activeIcon: Icons.search_off_sharp,
            label: 'Busca',
          ),
          PepperoniBottomBarItem(
            icon: Icons.file_copy_outlined,
            activeIcon: Icons.file_copy_rounded,
            label: 'Pedidos',
            countBadge: 2,
          ),
          PepperoniBottomBarItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
