import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/app_colors.dart';
import '../blocs/appointment/appointment_bloc.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen(
      {super.key,
      required this.patientId,
      required this.doctorId,
      required this.date,});
  final String patientId;
  final String doctorId;
  final String date;
  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  List<String> timeSlots = [];
  String? selectedTime;

  @override
  void initState() {
    super.initState();
    generateTimeSlots();
  }

  void generateTimeSlots() {
    int startHour = 12;
    int endHour = 20;
    for (int hour = startHour; hour < endHour; hour++) {
      timeSlots.add(formatTime(hour, 0));
      timeSlots.add(formatTime(hour, 30));
    }
  }

  String formatTime(int hour, int minute) {
    String hourStr = hour.toString().padLeft(2, '0');
    String minuteStr = minute.toString().padLeft(2, '0');
    return "$hourStr:$minuteStr";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appointment Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
                spacing: 8.0,
                children: timeSlots.map((time) {
                  return ChoiceChip(
                    label: Text(time),
                    selected: selectedTime == time,
                    onSelected: (selected) {
                      setState(() {
                        selectedTime = selected ? time : null;
                      });
                    },
                    selectedColor: Colors.blue,
                    labelStyle: TextStyle(
                      color: selectedTime == time ? Colors.white : Colors.black,
                    ),
                  );
                }).toList()),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // scheduleState.maybeMap(
                  //     orElse: () => const SizedBox(),
                  //     success: (schedules) {
                  //       if (_isScheduleIdUsed(
                  //           appointments:
                  //               appointmentState.maybeMap(
                  //                   orElse: () => [],
                  //                   success: (value) => value
                  //                       .getAppointmentsData!
                  //                       .value!),
                  //           scheduleId: scheduleId!))
                  //                     ShowSnackbar.showCheckTopSnackBar(
                  //     context,
                  //     text:
                  //         "Appointment already booked",
                  //     type: SnackBarType.error,
                  //   );
                  // } else {
                  //TODO: add appointment

                  // context.read<AppointmentBloc>().add(
                  //       AppointmentEvent.addAppointment(
                  //         scheduleId: scheduleId ?? 0,
                  //         patientId: selectedPatientId ?? "",
                  //         doctorId: value.doctor?.value?.id ?? "",
                  //       ),
                  //     );
                  Future.delayed(
                      const Duration(seconds: 3),
                      () => context
                          .read<AppointmentBloc>()
                          .add(const AppointmentEvent.getAppointment()));

                  // }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.totColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: Size(
                    MediaQuery.sizeOf(context).width * 0.9,
                    50,
                  ),
                ),
                child: const Text(
                  'Book Appointment',
                  style: TextStyle(color: AppColors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
