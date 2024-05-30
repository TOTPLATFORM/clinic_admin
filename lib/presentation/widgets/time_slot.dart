import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class TimeSlotWidget extends StatelessWidget {
  final String startTime;
  final String endTime;
  final String day;
  final VoidCallback? iconOnPressed;

  const TimeSlotWidget({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.day,
    this.iconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 8),
                      Text(
                        'Start Time :',
                        style: TextStyle(
                            fontSize: 16, color: AppColors.orangeColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    startTime,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 8),
                      Text(
                        "EndTime :",
                        style:
                            TextStyle(fontSize: 16, color: AppColors.blueColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    endTime,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8),
                      Text(
                        "Day :",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    day,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: iconOnPressed,
            icon: const Icon(
              Icons.delete_outline,
              size: 30,
              color: AppColors.redColor,
            ),
          ),
        ],
      ),
    );
  }
}
