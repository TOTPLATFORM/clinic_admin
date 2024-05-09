import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/presentation/widgets/custom/custom_text_form.dart';
import 'package:clinic_admin/presentation/widgets/tot_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeForm extends StatefulWidget {
  final void Function(DateTime, TimeOfDay) onValidation;
  final String buttonText;

  const DateTimeForm({
    super.key,
    required this.onValidation,
    this.timeValidator,
    this.dateValidator,
    required this.buttonText,
  });

  final String? Function(String? text)? timeValidator;
  final String? Function(String? text)? dateValidator;

  @override
  DateTimeFormState createState() => DateTimeFormState();
}

class DateTimeFormState extends State<DateTimeForm> {
  final formKey = GlobalKey<FormState>();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  late DateTime _dateTime;
  late TimeOfDay _timeOfDay;

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );
    if (picked != null) {
      setState(() {
        _dateTime = picked;
        String formatteDate = DateFormat('dd/MM/yyyy').format(picked);
        dateController.text = formatteDate;
      });
    }
  }

  void _pickTime() async {
    TimeOfDay? picked = await showTimePicker(
        context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()));
    if (picked != null) {
      setState(() {
        _timeOfDay = picked;
        timeController.text = picked.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //? date
          LabledTextField(
            validator: widget.dateValidator,
            controller: dateController,
            title: "Date",
            hintText: 'Select Date',
            onTap: _pickDate,
            keyboardType: TextInputType.none,
          ),
          const SizedBox(width: 20),
          //? time
          LabledTextField(
            validator: widget.timeValidator,
            controller: timeController,
            onTap: _pickTime,
            title: "Time",
            hintText: 'Select Time',
            keyboardType: TextInputType.none,
          ),
          const SizedBox(height: 20),
          TotButton(
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
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
                try {
                  widget.onValidation(
                    _dateTime,
                    _timeOfDay,
                  );
                } catch (e) {
                  // TODO: implement this
                }
              }
            },
            child: Text(
              widget.buttonText,
              style: const TextStyle(fontSize: 20, color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }
}
