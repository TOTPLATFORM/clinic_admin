import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

import '../../core/theme/app_colors.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final bool hasNotification;
  final int iconCode;
  final VoidCallback onPressed;

  final Color textColor;
  final Color iconColor;
  const ProfileItem(
      {super.key,
      required this.text,
      required this.iconCode,
      required this.onPressed,
      this.hasNotification = false,
      this.textColor = AppColors.blackColor,
      this.iconColor = AppColors.blackColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.055,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TOTIconAtom.displaySmall(
              codePoint: iconCode,
              color: iconColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 18),
            ),
            const SizedBox(
              width: 15,
            ),
            hasNotification
                ? SizedBox(
                    width: 50,
                    height: 50,
                    child: Card(
                      color: AppColors.greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            16.0), // Set your desired border radius
                      ),
                      child: const Center(
                        child: Text(
                          '0',
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            const TOTIconAtom.displaySmall(
              codePoint: 0xe09c,
              color: Color(0xFFd0d0d0),
            )
          ],
        ),
      ),
    );
  }
}
