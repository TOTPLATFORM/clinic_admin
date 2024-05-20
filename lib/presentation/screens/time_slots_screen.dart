import 'package:clinic_admin/core/routes/routes.dart';
import 'package:clinic_admin/presentation/blocs/time_slot/time_slot_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/show_snack_bar.dart';
import '../widgets/time_slot.dart';

class TimeSlotsScreen extends StatefulWidget {
  const TimeSlotsScreen({super.key});

  @override
  State<TimeSlotsScreen> createState() => _TimeSlotsScreenState();
}

class _TimeSlotsScreenState extends State<TimeSlotsScreen> {
  @override
  void initState() {
    context.read<TimeSlotBloc>().add(const TimeSlotEvent.getAllTimeSlots());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Slots'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () {
          context.pushNamed(Routes.addTimeSlots);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<TimeSlotBloc, TimeSlotState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            success: (value) {
              if (value.deleted) {
                ShowSnackbar.showCheckTopSnackBar(
                  context,
                  text: 'Time slot deleted successfully',
                );
                
              }
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            loading: (value) => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (value) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                itemCount: value.slots?.length ?? 0,
                itemBuilder: (context, index) {
                  return TimeSlotWidget(
                    iconOnPressed: () {
                      context
                          .read<TimeSlotBloc>()
                          .add(TimeSlotEvent.deleteTimeSlot(
                            timeSlotId: value.slots?[index].id ?? 0,
                          ));
                    },
                    day: value.slots?[index].day ?? "",
                    startTime: value.slots?[index].startTime ?? "",
                    endTime: value.slots?[index].endTime ?? "",
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
