import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:river_router/features/dashboard/presentation/controller/dashboard_controller.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(dashboardControllerProvider);
    return BottomNavigationBar(
      currentIndex: position,
      onTap: (value) => onItemTap(index: value),
      selectedLabelStyle: const TextStyle(
          color: Colors.deepOrange, fontSize: 14, fontWeight: FontWeight.w700),
      unselectedLabelStyle: const TextStyle(
          color: Colors.deepPurple, fontSize: 12, fontWeight: FontWeight.w500),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_work),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          activeIcon: Icon(Icons.shopify),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications),
          activeIcon: Icon(Icons.settings),
          label: "Setting",
        ),
      ],
    );
  }

  void onItemTap({required int index}) {
    debugPrint("tapIndex: $index");
    ref.read(dashboardControllerProvider.notifier).setPosition(value: index);
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/cart');
        break;
      case 2:
        context.go('/setting');
        break;
      default:
    }
  }
}
