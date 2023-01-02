import 'package:app/src/features/bloc/user/model/user.dart';
import 'package:app/src/features/bloc/user/user_bloc.dart';
import 'package:app/src/infrastructure/pages/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

import 'app_routes.dart';
import 'menu.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});
  @override
  State<Layout> createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  void handlerMenu() {
    _key.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          toolbarHeight: 90,
          title: const Center(
            child: Text('By Andry Morales'),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  final newUser = User('Marcos', 'marcos@gmail.com');
                  BlocProvider.of<UserBloc>(context, listen: false)
                      .add(ActivateUser(newUser));
                })
          ],
        ),
        drawer: Menu(controller: _controller),
        body: Center(
            child:
                AppRoutes(controller: _controller, handlerMenu: handlerMenu)),
        floatingActionButton: const Footer());
  }
}
