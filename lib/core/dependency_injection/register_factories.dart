import 'package:clinic_admin/presentation/blocs/patient/patients_bloc.dart';

import '../../presentation/blocs/appointment/appointment_bloc.dart';
import '../../presentation/blocs/auth/auth_bloc.dart';
import '../../presentation/blocs/category/category_bloc.dart';
import '../../presentation/blocs/doctor/doctor_bloc.dart';
import '../../presentation/blocs/search/search_bloc.dart';
import 'di_container.dart';

void registerFactories() {
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginQuery: getIt(),
      registerQuery: getIt(),
    ),
  );
  getIt.registerFactory<CategoryBloc>(
    () => CategoryBloc(
      getCategoryQuery: getIt(),
      getDoctorBySpecialtyQuery: getIt(),
    ),
  );
  getIt.registerFactory<DoctorBloc>(
    () => DoctorBloc(
      deleteDoctorCommand: getIt(),
      addDoctorQuery: getIt(),
      getDoctorQuery: getIt(),
      getDoctorByIdQuery: getIt(),
    ),
  );
  getIt.registerFactory<AppointmentBloc>(
    () => AppointmentBloc(
      addAppointmentCommand: getIt(),
      getAppointmentQuery: getIt(),
      deleteAppointmentCommand: getIt(),
      updateAppointmentCommand: getIt(),
    ),
  );
  getIt.registerFactory<SearchBloc>(
    () => SearchBloc(
      searchDoctorByTextCommand: getIt(),
    ),
  );
  getIt.registerFactory<PatientsBloc>(
      () => PatientsBloc(getPatientsQuery: getIt()));

}
