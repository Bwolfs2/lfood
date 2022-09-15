import 'package:flutter/material.dart';

import 'pepperoni_bottom_bar_item.dart';

class PepperoniBottomBar extends StatefulWidget {
  final List<PepperoniBottomBarItem> items;
  final void Function(int index) onIndexSelected;
  const PepperoniBottomBar({
    Key? key,
    required this.items,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  State<PepperoniBottomBar> createState() => _PepperoniBottomBarState();
}

class _PepperoniBottomBarState extends State<PepperoniBottomBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.from(
        widget.items.map(
          (item) => BottomNavigationBarItem(
            backgroundColor: const Color(0xffFDFFFD),
            icon: PepperoniIconBar(
              icon: item.icon,
              countBadge: item.countBadge,
            ),
            label: item.label,
            activeIcon: PepperoniIconBar(
              icon: item.activeIcon,
              countBadge: item.countBadge,
            ),
          ),
        ),
      ),
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
      showUnselectedLabels: true,
      currentIndex: selected,
      onTap: (index) {
        widget.onIndexSelected(index);
        setState(() {
          selected = index;
        });
      },
    );
  }
}

class PepperoniIconBar extends StatelessWidget {
  final IconData icon;
  final int countBadge;
  const PepperoniIconBar({
    Key? key,
    required this.icon,
    required this.countBadge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (countBadge > 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon),
          Positioned(
            right: -5,
            top: -5,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 8,
              child: Text(
                '$countBadge',
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          )
        ],
      );
    }

    return Icon(icon);
  }
}
