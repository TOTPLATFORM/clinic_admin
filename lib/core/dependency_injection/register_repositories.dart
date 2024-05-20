import 'package:clinic_admin/domain/repos/patients_repo.dart';
import 'package:clinic_admin/domain/repos/time_slot_repo.dart';
import 'package:clinic_admin/infrastructure/data_source/abstarctions/time_slot_data_source.dart';
import 'package:clinic_admin/infrastructure/repositories/patients_repo_impl.dart';
import 'package:clinic_admin/infrastructure/repositories/time_slot_repo_impl.dart';

import 'di_container.dart';
import '../../domain/repos/appointment_repo.dart';
import '../../domain/repos/auth_repo.dart';
import '../../domain/repos/category_repo.dart';
import '../../domain/repos/doctor_repo.dart';
import '../../domain/repos/search_repo.dart';
import '../../domain/repos/update_personal_data_repo.dart';
import '../../infrastructure/repositories/appointment_repo_impl.dart';
import '../../infrastructure/repositories/auth_repo_impl.dart';
import '../../infrastructure/repositories/category_repo_impl.dart';
import '../../infrastructure/repositories/doctor_repo_impl.dart';
import '../../infrastructure/repositories/search_repo_impl.dart';
import '../../infrastructure/repositories/update_personal_data_impl.dart';

void registerRepositories() {
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      authDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<CategoryRepo>(
    CategoryRepoImpl(
      categoryDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<DoctorRepo>(
    DoctorRepoImpl(
      doctorDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<AppointmentRepo>(
    AppointmentRepoImpl(
      appointmentDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<SearchRepo>(
    SearchRepoImpl(
      searchDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<UpdatePersonalDataRepo>(
    UpdataPesonalDataRepoImpl(
      updatePersonalDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<PatientsRepo>(
      PatientsRepoImpl(patientDataSource: getIt()));
  getIt.registerSingleton<TimeSlotRepo>(
      TimeSlotRepoImpl(timeSlotDataSource: getIt()));
}
