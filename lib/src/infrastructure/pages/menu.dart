import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class Menu extends StatelessWidget {
  final SidebarXController _controller;

  const Menu({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarWidget(controller: _controller);
  }
}

class SideBarWidget extends StatelessWidget {
  final SidebarXController _controller;

  const SideBarWidget({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      extendedTheme: const SidebarXTheme(width: 140),
      items: const [
        SidebarXItem(icon: Icons.home, label: 'Inicio'),
        SidebarXItem(icon: Icons.shopping_cart, label: 'Carrito'),
        SidebarXItem(icon: Icons.favorite, label: 'Favoritos'),
        SidebarXItem(icon: Icons.home_repair_service, label: 'Tratamientos'),
        SidebarXItem(icon: Icons.calendar_month, label: 'Pide cita'),
      ],
    );
  }
}
