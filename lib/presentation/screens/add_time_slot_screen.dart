import 'package:clinic_admin/presentation/widgets/tot_button.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class AddTimeSlotScreen extends StatefulWidget {
  const AddTimeSlotScreen({super.key});

  @override
  State<AddTimeSlotScreen> createState() => _AddTimeSlotScreenState();
}

class _AddTimeSlotScreenState extends State<AddTimeSlotScreen> {
  late TextEditingController _timeController;

  String? date;
  String? startTime;
  String? endTime;
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
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _timeController.text = picked.format(context);
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
        // floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              pinned: true,
              title: Text('Time Slots'),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: AppColors.white,
              child: TextFormField(
                controller: _timeController,
                readOnly: true,
                onTap: () {
                  _selectTime(context);
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
            Padding(
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
                  style: TextStyle(color: AppColors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
