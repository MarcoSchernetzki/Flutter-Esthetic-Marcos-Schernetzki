import 'package:app/src/features/pages/appointment.dart';
import 'package:app/src/features/pages/home_page.dart';
import 'package:app/src/features/pages/treatment/treatment_page.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class AppRoutes extends StatelessWidget {
  final SidebarXController _controller;
  final Function handlerMenu;

  const AppRoutes(
      {Key? key,
      required SidebarXController controller,
      required this.handlerMenu})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          switch (_controller.selectedIndex) {
            case 0:
              handlerMenu();
              return const HomePage();
            case 1:
              handlerMenu();
              return const Text('Su carrito esta vacio');
            case 2:
              handlerMenu();
              return const Text('Aun no tiene productos en favoritos');
            case 3:
              handlerMenu();
              return const TreatmentsPage();
            case 4:
              handlerMenu();
              return const Appointment();
            default:
              return const HomePage();
          }
        });
  }
}
