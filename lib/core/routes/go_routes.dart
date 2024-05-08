import 'package:clinic_admin/presentation/screens/appointment_screen.dart';
import 'package:clinic_admin/presentation/screens/category_screen.dart';
import 'package:clinic_admin/presentation/screens/doctor_details_screen.dart';
import 'package:clinic_admin/presentation/screens/edit_personal_data_screen.dart';
import 'package:clinic_admin/presentation/screens/layout_screen.dart';
import 'package:clinic_admin/presentation/screens/login/login_screen.dart';
import 'package:clinic_admin/presentation/screens/search_page.dart';
import 'package:clinic_admin/presentation/screens/splash_screen.dart';
import 'package:clinic_admin/presentation/screens/update_appointment.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter allRoutes = GoRouter(
  initialLocation: Routes.login.withSlash,
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.splash.withSlash,
      name: Routes.splash,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: Routes.editPersonal.withSlash,
      name: Routes.editPersonal,
      builder: (context, state) {
        return const EditProfileScreenBody();
      },
    ),
    GoRoute(
      path: Routes.category.withSlash,
      name: Routes.category,
      builder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        if (data != null) {
          final String id = data["categoryId"] as String;
          final String name = data["categoryName"] as String;
          return CategoryScreen(
            categoryId: id,
            categoryName: name,
          );
        }
        return const CategoryScreen(
          categoryId: "id",
          categoryName: "name",
        );
      },
    ),
    GoRoute(
      path: Routes.updateAppointment.withSlash,
      name: Routes.updateAppointment,
      builder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        if (data != null) {
          final String appointmentId = data["appointmentId"] as String;
          final String doctorId = data["doctorId"] as String;
          return UpdateAppointmentScreen(
            appointmentId: appointmentId,
            doctorId: doctorId,
          );
        }
        return const UpdateAppointmentScreen(
          appointmentId: "id",
          doctorId: "name",
        );
      },
    ),
    GoRoute(
      path: Routes.search.withSlash,
      name: Routes.search,
      builder: (context, state) {
        return const SearchPage();
      },
    ),
    GoRoute(
      path: Routes.login.withSlash,
      name: Routes.login,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: Routes.layout.withSlash,
      name: Routes.layout,
      builder: (context, state) {
        return const LayoutScreen();
      },
    ),
    GoRoute(
      path: Routes.doctorDetails.withSlash,
      name: Routes.doctorDetails,
      builder: (context, state) {
        final String id = state.extra as String;
        return DoctorDetailsScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: Routes.appointment.withSlash,
      name: Routes.appointment,
      builder: (context, state) {
        return const AppointmentScreen();
      },
    ),
  ],
);
