import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/routes.dart';
import '../../core/theme/app_colors.dart';
import '../blocs/appointment/appointment_bloc.dart';
import '../widgets/doctor_item.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    context
        .read<AppointmentBloc>()
        .add(const AppointmentEvent.getAppointment());
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Upcoming Appointments"),
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              success: (value) {
                if (value.updated == true || value.deleted == true) {
                  context
                      .read<AppointmentBloc>()
                      .add(const AppointmentEvent.getAppointment());
                }
              });
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            success: (value) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: value.getAppointmentsData?.value?.length ?? 0,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.grayShade200)),
                    width: double.infinity,
                    child: Column(
                      children: [
                        DoctorItem(
                          color: AppColors.grayShade200,
                          imagePath: "assets/images/app_logo.png",
                          doctorDescription: value.getAppointmentsData
                                  ?.value![index].patientName ??
                              "",
                          doctorName: value.getAppointmentsData?.value![index]
                                  .doctorName ??
                              "",
                          doctorType: value.getAppointmentsData?.value![index]
                                  .startTime ??
                              "",
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(value.getAppointmentsData
                                            ?.value![index].day ??
                                        ""),
                                  ],
                                ),
                                SizedBox(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.12),
                                Row(
                                  children: [
                                    const Icon(Icons.access_time_rounded),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(value.getAppointmentsData
                                            ?.value![index].startTime ??
                                        ""),
                                  ],
                                ),
                                SizedBox(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.09),
                                Row(
                                  children: [
                                    const Icon(Icons.share_arrival_time_sharp),
                                    SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.025),
                                    Text(
                                      value.getAppointmentsData?.value![index]
                                              .endTime ??
                                          "",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  context.read<AppointmentBloc>().add(
                                        AppointmentEvent.deleteAppointment(
                                          appointmentId: value
                                                  .getAppointmentsData
                                                  ?.value![index]
                                                  .id
                                                  .toString() ??
                                              "",
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
                                    MediaQuery.sizeOf(context).width * 0.35,
                                    50,
                                  ),
                                ),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                  ),
                                )),
                            ElevatedButton(
                              onPressed: () {
                                context.pushNamed(Routes.updateAppointment,
                                    extra: {
                                      "appointmentId": value
                                          .getAppointmentsData?.value![index].id
                                          .toString(),
                                      "doctorId": value.getAppointmentsData
                                          ?.value![index].doctorId,
                                      "patientId": value.getAppointmentsData
                                          ?.value![index].patientId,
                                      "scheduleId": value.getAppointmentsData
                                          ?.value![index].scheduleId
                                    });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.totColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fixedSize: Size(
                                  MediaQuery.sizeOf(context).width * 0.35,
                                  50,
                                ),
                              ),
                              child: const Text(
                                'Reschedule',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              );
            },
          );
        },
      ),
    );
  }
}
