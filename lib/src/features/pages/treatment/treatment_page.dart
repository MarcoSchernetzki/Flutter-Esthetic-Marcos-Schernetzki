import 'package:app/src/features/pages/treatment/treatment_list.dart';
import 'package:flutter/material.dart';
import '../../bloc/treatment/model/treatment.dart';

class TreatmentsPage extends StatefulWidget {
  const TreatmentsPage({super.key});

  @override
  State<TreatmentsPage> createState() => _TreatmentsPageState();
}

class _TreatmentsPageState extends State<TreatmentsPage> {
  final List<Treatment> _treatments = [
    Treatment(
        'Lifting', 'assets/servicio4.jpeg', 'esto es una descripcion', 40),
    Treatment('Hilo', 'assets/servicio2.jpeg', 'esto es una descripcion', 15),
    Treatment('Labio', 'assets/servicio1.jpeg', 'esto es una descripcion', 10),
    Treatment(
        'Pestañas', 'assets/servicio3.jpeg', 'esto es una descripcion', 70)
  ];
  @override
  Widget build(BuildContext context) {
    return TreatmentList(treatments: _treatments);
  }
}
