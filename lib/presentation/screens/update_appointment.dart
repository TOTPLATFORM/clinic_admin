import 'dart:developer';

import 'package:clinic_admin/core/dependency_injection/di_container.dart';
import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/core/utils/shared_keys.dart';
import 'package:clinic_admin/core/utils/show_snack_bar.dart';
import 'package:clinic_admin/presentation/blocs/appointment/appointment_bloc.dart';
import 'package:clinic_admin/presentation/widgets/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class UpdateAppointmentScreen extends StatefulWidget {
  final String appointmentId;
  final String doctorId;
  const UpdateAppointmentScreen({
    super.key,
    required this.appointmentId,
    required this.doctorId,
  });

  @override
  State<UpdateAppointmentScreen> createState() =>
      _UpdateAppointmentScreenState();
}

class _UpdateAppointmentScreenState extends State<UpdateAppointmentScreen> {
  String? date;
  String? startTime;
  String? endTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reschdule appointment"),
        // title: Text(widget.appointmentId),
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              success: (value) {
                if (value.updated) {
                  ShowSnackbar.showCheckTopSnackBar(
                    context,
                    text: 'Appointment updated successfully',
                    type: SnackBarType.success,
                  );
                  context
                      .read<AppointmentBloc>()
                      .add(const AppointmentEvent.getAppointment());
                }
              });
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: DateTimePicker(
                    onDateTimeChanged: (DateTime dateTime) {
                      startTime = DateFormat('hh:mm:ss').format(dateTime);

                      endTime = DateFormat('hh:mm:ss')
                          .format(dateTime.add(const Duration(hours: 1)));

                      date = DateFormat('yyyy-MM-dd').format(dateTime);
                    },
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      log("selectedTime: ::$startTime");
                      log("selectedTime: ::$date");
                      log("selectedTime: ::$endTime");
                      if (date == null || startTime == null) {
                        ShowSnackbar.showCheckTopSnackBar(
                          context,
                          text: 'please select date and time',
                          type: SnackBarType.error,
                        );
                      }
                      context.read<AppointmentBloc>().add(
                            AppointmentEvent.updateAppointment(
                              appointmentId: widget.appointmentId,
                              data: date!,
                              startTime: startTime!,
                              endTime: endTime!,
                              patientId:
                                  preferences.getString(SharedKeys.id) ?? "",
                              doctorId: widget.doctorId,
                            ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBCCBF9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        10,
                      )),
                      fixedSize: Size(
                        MediaQuery.sizeOf(context).width * 0.8,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
