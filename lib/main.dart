import 'package:app/src/features/bloc/user/user_bloc.dart';
import 'package:app/src/infrastructure/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'By Andry Morales',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Layout()),
    );
  }
}
