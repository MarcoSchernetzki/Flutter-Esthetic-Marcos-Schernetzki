import 'dart:html';

import 'package:app/src/features/bloc/user/user_bloc.dart';
import 'package:app/src/features/pages/appointment.dart';
import 'package:app/src/features/pages/treatment/treatment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (_, state) {
      return state.isUser
          ? Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo-y-marca-2.jpg'))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(300, 300, 0, 0),
                child: Center(
                  child: ElevatedButton(
                      child: const Text('Pide cita'),
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => const Appointment());
                        Navigator.push(context, route);
                      }),
                ),
              ),
            )
          : const Center(child: Text('Necesita iniciar sesion para continuar'));
    });
  }
}
