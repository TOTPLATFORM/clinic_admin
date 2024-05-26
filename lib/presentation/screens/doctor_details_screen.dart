import 'dart:developer';

import 'package:clinic_admin/presentation/blocs/schedule/schedule_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/app_colors.dart';
import '../../core/utils/show_snack_bar.dart';
import '../../domain/entities/patient_entity.dart';
import '../blocs/appointment/appointment_bloc.dart';
import '../blocs/doctor/doctor_bloc.dart';
import '../blocs/patient/patients_bloc.dart';

class DoctorDetailsScreen extends StatefulWidget {
  final String id;
  const DoctorDetailsScreen({super.key, required this.id});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

List<String> doctorsPhoto = [
  "assets/images/doctor1.jpg",
  "assets/images/doctor2.jpg",
  "assets/images/doctor3.jpg",
  "assets/images/doctor4.jpg",
];

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  String? date;
  String? startTime;
  String? endTime;
  String? selectedValue;
  String? selectedPatientId;
  int? scheduleId;

  @override
  @override
  void initState() {
    context.read<DoctorBloc>().add(DoctorEvent.getDoctorById(id: widget.id));
    context
        .read<ScheduleBloc>()
        .add(ScheduleEvent.getSchedulesByDoctorId(doctorId: widget.id));
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
                  doctorsPhoto.shuffle();
                  final PatientEntity patients =
                      context.read<PatientsBloc>().state.maybeMap(
                            success: (value) => value.patientEntity,
                            orElse: () => PatientEntity(),
                          );

                  if (value.isLoading) {
                    return const Scaffold(
                        body: Center(child: CircularProgressIndicator()));
                  }
                  return Scaffold(
                    appBar: AppBar(
                        title: Text(value.doctor?.value?.userName ?? "")),
                    body: Container(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                doctorsPhoto.first,
                                height: 300,
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 20),
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
                            const SizedBox(height: 20),
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
                            const SizedBox(height: 20),
                            const Center(
                              child: Text(
                                'select Date and Time',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.greenColor),
                              ),
                            ),
                            const SizedBox(height: 10),
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        hint: const Text("Select Time"),
                                        items: schedules.schedules.value
                                                ?.map((schedule) {
                                              return DropdownMenuItem(
                                                value: schedule.id,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Time: ${schedule.timeSlot?.startTime}",
                                                      style: const TextStyle(
                                                          color: AppColors
                                                              .greenColor),
                                                    ),
                                                    Text(
                                                        "day: ${schedule.timeSlot?.day}"),
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
                            const SizedBox(height: 20),
                            DropdownButtonFormField(
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
                              hint: const Text("Select Patient"),
                              items: patients.value?.map((patient) {
                                    return DropdownMenuItem(
                                      value: patient.id,
                                      child: Text(
                                        patient.patientFirstName ?? "",
                                        style: const TextStyle(
                                            color: AppColors.greenColor),
                                      ),
                                    );
                                  }).toList() ??
                                  [],
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                  selectedPatientId = value.toString();
                                });
                                log("$selectedPatientId");
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  context.read<AppointmentBloc>().add(
                                      AppointmentEvent.addAppointment(
                                          scheduleId: scheduleId ?? 0,
                                          patientId: selectedPatientId ?? "",
                                          doctorId:
                                              value.doctor?.value?.id ?? ""));
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
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
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
