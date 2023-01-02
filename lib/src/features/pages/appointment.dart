import 'package:app/src/features/pages/treatment/treatment_page.dart';
import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime.now();
  final lastDate = DateTime(2023, 12);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CalendarDatePicker(
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          onDateChanged: (newDate) {
            setState(() {
              selectedDate = newDate;
            });
          }),
      Text(
        'Quiero mi cita el dia: ' + '$selectedDate'.split(' ')[0],
        style: const TextStyle(fontSize: 20),
      ),
    ]);
  }
}
