import 'dart:developer';

import '../../core/dependency_injection/di_container.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/shared_keys.dart';
import '../../core/utils/show_snack_bar.dart';
import '../blocs/appointment/appointment_bloc.dart';
import '../blocs/doctor/doctor_bloc.dart';
import '../widgets/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DoctorDetailsScreen extends StatefulWidget {
  final String id;
  const DoctorDetailsScreen({super.key, required this.id});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  String? date;
  String? startTime;
  String? endTime;
  @override
  @override
  void initState() {
    context.read<DoctorBloc>().add(DoctorEvent.getDoctorById(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppointmentBloc, AppointmentState>(
      listener: (context, appointmentState) {
        appointmentState.maybeMap(
          orElse: () {},
          success: (value) {
            ShowSnackbar.showCheckTopSnackBar(context,
                text: 'Appointment created successfully',
                type: SnackBarType.success);
            context
                .read<AppointmentBloc>()
                .add(const AppointmentEvent.getAppointment());
          },
          failure: (message) {
            ShowSnackbar.showCheckTopSnackBar(context,
                text: "There was an error", type: SnackBarType.error);
          },
        );
      },
      builder: (context, state) {
        return BlocBuilder<DoctorBloc, DoctorState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => const SizedBox(),
                loading: (state) =>
                    const Center(child: CircularProgressIndicator()),
                success: (value) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(value.doctor?.value?.userName ?? ""),
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/images/doctor.png",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Doctor Name',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            value.doctor?.value?.userName ?? "",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Doctor Type',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            value.doctor?.value?.specialization
                                    ?.specializationName ??
                                "",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                            child: Text(
                              'select Date and Time',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greenColor),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          DateTimePicker(
                            onDateTimeChanged: (DateTime dateTime) {
                              startTime =
                                  DateFormat('hh:mm:ss').format(dateTime);
                              endTime = DateFormat('hh:mm:ss').format(dateTime);
                              date = DateFormat('yyyy-MM-dd').format(dateTime);
                            },
                          ),
                          const Spacer(),
                          BlocBuilder<AppointmentBloc, AppointmentState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                orElse: () {
                                  return ElevatedButton(
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
                                            AppointmentEvent.addAppointment(
                                              data: date ?? "",
                                              startTime: startTime ?? "",
                                              endTime: endTime ?? "",
                                              patientId: preferences.getString(
                                                      SharedKeys.id) ??
                                                  "",
                                              doctorId:
                                                  value.doctor?.value?.id ?? "",
                                            ),
                                          );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.totColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      fixedSize: Size(
                                        MediaQuery.sizeOf(context).width * 0.9,
                                        50,
                                      ),
                                    ),
                                    child: const Text(
                                      'Book Appointment',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  );
                                },
                                loading: (state) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        );
      },
    );
  }
}
