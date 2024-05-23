import 'dart:developer';

import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/core/utils/show_snack_bar.dart';
import 'package:clinic_admin/presentation/blocs/appointment/appointment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/schedule/schedule_bloc.dart';

class UpdateAppointmentScreen extends StatefulWidget {
  final String appointmentId;
  final String doctorId;
  final int scheduleId;
  final String patientId;
  const UpdateAppointmentScreen({
    super.key,
    required this.appointmentId,
    required this.doctorId,
    required this.scheduleId,
    required this.patientId,
  });

  @override
  State<UpdateAppointmentScreen> createState() =>
      _UpdateAppointmentScreenState();
}

class _UpdateAppointmentScreenState extends State<UpdateAppointmentScreen> {
  int? scheduleId;
  @override
  void initState() {
    context
        .read<ScheduleBloc>()
        .add(ScheduleEvent.getSchedulesByDoctorId(doctorId: widget.doctorId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rescheduled appointment"),
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
                BlocBuilder<ScheduleBloc, ScheduleState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => const SizedBox(),
                      success: (schedules) {
                        return DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            hint: const Text("Select Time"),
                            items: schedules.schedules.value?.map((schedule) {
                                  return DropdownMenuItem(
                                    value: schedule.id,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Time: ${schedule.timeSlot?.startTime}",
                                          style: const TextStyle(
                                              color: AppColors.greenColor),
                                        ),
                                        Text("day: ${schedule.timeSlot?.day}"),
                                      ],
                                    ),
                                  );
                                }).toList() ??
                                [],
                            validator: (v) {
                              if (v == null) {
                                return "Please select time";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              log("$value");
                              scheduleId = value as int;
                            });
                      },
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      // if (date == null || startTime == null) {
                      //   ShowSnackbar.showCheckTopSnackBar(
                      //     context,
                      //     text: 'please select date and time',
                      //     type: SnackBarType.error,
                      //   );
                      // }
                      context.read<AppointmentBloc>().add(
                            AppointmentEvent.updateAppointment(
                              appointmentId: widget.appointmentId,
                              patientId: widget.patientId,
                              doctorId: widget.doctorId,
                              scheduleId: scheduleId ?? 0,
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
