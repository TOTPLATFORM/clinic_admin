import 'dart:developer';

import '../widgets/date_time_picker.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DateTimePicker(
          onDateTimeChanged: (DateTime dateTime) {
            log("Selected DateTime: $dateTime");
          },
        ),
      ),
    );
  }
}
