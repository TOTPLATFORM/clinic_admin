import '../../core/dependency_injection/di_container.dart';
import '../../core/routes/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/shared_keys.dart';
import '../widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class ProfileSrceen extends StatelessWidget {
  const ProfileSrceen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f5f8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            const TOTAvatarAtom.asset('assets/images/clinc_logo.png'),
            const SizedBox(
              width: 10,
            ),
            Text('Hi, ${preferences.getString(SharedKeys.userName) ?? ""}'),
          ],
        ),
        actions: [
          TOTIconButtonAtom.displayMedium(
            codePoint: 0xe3b3,
            iconColor: AppColors.blackColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ProfileItem(
            iconCode: 0xf08ae,
            text: "Edit Profile",
            hasNotification: false,
            onPressed: () {
              context.pushNamed(Routes.editPersonal);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ProfileItem(
            iconCode: 0xe3b3,
            text: "Logout",
            hasNotification: false,
            onPressed: () {
              context.go(Routes.login.withSlash);
              preferences.clear();
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}