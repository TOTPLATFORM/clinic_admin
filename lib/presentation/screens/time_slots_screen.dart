import 'package:clinic_admin/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimeSlotsScreen extends StatefulWidget {
  const TimeSlotsScreen({super.key});

  @override
  State<TimeSlotsScreen> createState() => _TimeSlotsScreenState();
}

class _TimeSlotsScreenState extends State<TimeSlotsScreen> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Routes.addTimeSlots);
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [SizedBox(),],
        ),
      ),
    );
  }
}
