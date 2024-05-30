import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import 'core/dependency_injection/di_container.dart';
import 'core/routes/go_routes.dart';
import 'core/utils/app_config.dart';
import 'presentation/blocs/appointment/appointment_bloc.dart';
import 'presentation/blocs/auth/auth_bloc.dart';
import 'presentation/blocs/category/category_bloc.dart';
import 'presentation/blocs/doctor/doctor_bloc.dart';
import 'presentation/blocs/patient/patients_bloc.dart';
import 'presentation/blocs/schedule/schedule_bloc.dart';
import 'presentation/blocs/search/search_bloc.dart';
import 'presentation/blocs/time_slot/time_slot_bloc.dart';

// const String baseUrl = "http://192.168.1.124:5000/api";
const String baseUrl = "http://192.168.1.66:5252/api";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppConfig>(
    AppConfig(
      restBaseUrl: baseUrl,
      graphQLBaseUrl: "$baseUrl/graphql",
      assetsBaseUrl: "$baseUrl/assets",
      appName: "clincApp",
      flavorName: "dev",
    ),
  );
  await initDependencyInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        routerConfig: allRoutes,
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  List<SingleChildWidget> get providers {
    return [
      BlocProvider(
        create: (context) => PatientsBloc(getPatientsQuery: getIt())
          ..add(const PatientsEvent.getAll()),
      ),
      BlocProvider(
        create: (context) {
          return AuthBloc(loginQuery: getIt(), registerQuery: getIt());
        },
      ),
      BlocProvider(
        create: (context) {
          return ScheduleBloc(getSchedulesByDoctorId: getIt());
        },
      ),
      BlocProvider(
        create: (context) {
          return TimeSlotBloc(addTimeSlot: getIt(), getTimeSlotsQuery: getIt(),
          deleteTimeSlotCommand: getIt()
          );
        },
      ),
      BlocProvider(
        create: (context) {
          return SearchBloc(
            searchDoctorByTextCommand: getIt(),
          );
        },
      ),
      BlocProvider(
        create: (context) {
          return AppointmentBloc(
            addAppointmentCommand: getIt(),
            getAppointmentQuery: getIt(),
            deleteAppointmentCommand: getIt(),
            updateAppointmentCommand: getIt(),
          );
        },
      ),
      BlocProvider(
        create: (context) {
          return CategoryBloc(
            getCategoryQuery: getIt(),
            getDoctorBySpecialtyQuery: getIt(),
          )..add(const CategoryEvent.getAllCategory());
        },
      ),
      BlocProvider(
        create: (context) {
          return DoctorBloc(
            addDoctorQuery: getIt(),
            getDoctorQuery: getIt(),
            getDoctorByIdQuery: getIt(),
            deleteDoctorCommand: getIt(),
          )..add(const DoctorEvent.getAllDoctors());
        },
      ),
      BlocProvider(
        create: (context) => PatientsBloc(getPatientsQuery: getIt())
          ..add(const PatientsEvent.getAll()),
      )
    ];
  }
}
