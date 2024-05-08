import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/presentation/screens/calender_screen.dart';
import 'package:clinic_admin/presentation/screens/home_screen.dart';
import 'package:clinic_admin/presentation/screens/profile_screen.dart';
import 'package:clinic_admin/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({
    super.key,
  });

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  void initState() {
    super.initState();
    // if (widget.isComingFromLogin) {
    // log("::: layout initState login success :::");
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) async {
    //     final isUserSelectedFulfillmentCenter =
    //         CacheHelper.getString(SharedKeys.fulfillmentCenterId) != null;
    //     if (isUserSelectedFulfillmentCenter) {
    //       return;
    //     }
    //     showFulfillmentCenterPicker(context);
    //   },
    // );
    // }
  }

  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CalenderScreen(),
    const ProfileSrceen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.greenColor,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
