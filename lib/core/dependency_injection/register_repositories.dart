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
}
