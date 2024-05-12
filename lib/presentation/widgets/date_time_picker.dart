import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  final Function(DateTime) onDateTimeChanged;

  const DateTimePicker({super.key, required this.onDateTimeChanged});

  @override
  DateTimePickerState createState() => DateTimePickerState();
}

class DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  void _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
      _combineDateTime();
    }
  }

  void _pickTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
      _combineDateTime();
    }
  }

  void _combineDateTime() {
    final DateTime combinedDateTime = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime.hour,
      selectedTime.minute,
    );
    widget.onDateTimeChanged(combinedDateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _pickDate,
          child: const Text('Select Date'),
        ),
        ElevatedButton(
          onPressed: _pickTime,
          child: const Text('Select Time'),
        ),
      ],
    );
  }
}
