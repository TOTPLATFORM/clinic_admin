import 'dart:developer';

import 'package:clinic_admin/app/requests/time_slot_request.dart';
import 'package:clinic_admin/core/utils/show_snack_bar.dart';
import 'package:clinic_admin/presentation/blocs/time_slot/time_slot_bloc.dart';
import 'package:clinic_admin/presentation/widgets/tot_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/theme/app_colors.dart';

class AddTimeSlotScreen extends StatefulWidget {
  const AddTimeSlotScreen({super.key});

  @override
  State<AddTimeSlotScreen> createState() => _AddTimeSlotScreenState();
}

class _AddTimeSlotScreenState extends State<AddTimeSlotScreen> {
  late TextEditingController _timeController;

  String startTime = "";
  String endTime = "";
  String? _selectedDay;

  final List<String> _days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  Future<void> _selectTime(
      BuildContext context, TextEditingController controller) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final now = DateTime.now();
      final selectedTime =
          DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      final formattedTime = DateFormat('hh:mm:ss').format(selectedTime);
      final formattedEndTime = DateFormat('hh:mm:ss')
          .format(selectedTime.add(const Duration(hours: 1)));
      log(formattedTime);
      log(formattedEndTime);
      setState(() {
        controller.text = formattedTime;
        startTime = formattedTime;
        endTime = formattedEndTime;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _timeController = TextEditingController();
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              pinned: true,
              title: Text('Time Slots'),
            ),
          ];
        },
        body: BlocListener<TimeSlotBloc, TimeSlotState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              success: (value) {
                Navigator.pop(context);
                ShowSnackbar.showCheckTopSnackBar(context,
                    text: 'Time slot added successfully',
                    type: SnackBarType.success);
              },
              failure: (value) {
                ShowSnackbar.showCheckTopSnackBar(context,
                    text: value.message, type: SnackBarType.error);
              },
            );
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: AppColors.white,
                child: TextFormField(
                  controller: _timeController,
                  onChanged: (value) {
                    startTime = value;
                  },
                  readOnly: true,
                  onTap: () {
                    _selectTime(context, _timeController);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Select Time',
                    suffixIcon: Icon(Icons.access_time),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Select Day',
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
                    hint: const Text('Select a day'),
                    value: _selectedDay,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedDay = newValue;
                      });
                    },
                    items: _days.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const Spacer(),
              BlocBuilder<TimeSlotBloc, TimeSlotState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TotButton(
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
                            "Save",
                            style:
                                TextStyle(color: AppColors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            if (startTime.isEmpty || _selectedDay == null) {
                              ShowSnackbar.showCheckTopSnackBar(
                                context,
                                text: 'Please enter time and day',
                                type: SnackBarType.error,
                              );
                            } else {
                              log('startTime: $startTime');
                              log('endTime: $endTime');
                              log('day: ${_selectedDay ?? ""}');
                              context.read<TimeSlotBloc>().add(
                                    TimeSlotEvent.addTimeSlot(
                                      TimeSlotRequest(
                                        startTime: startTime,
                                        day: _selectedDay ?? "",
                                        endTime: endTime,
                                      ),
                                    ),
                                  );
                            }
                          },
                        ),
                      );
                    },
                    loading: (value) {
                      return const Center(
                          child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      ));
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
