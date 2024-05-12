import 'package:clinic_admin/infrastructure/data_source/abstarctions/patients_data_source.dart';
import 'package:clinic_admin/infrastructure/data_source/implementations/patients_data_source_impl.dart';

import 'di_container.dart';
import '../../infrastructure/data_source/abstarctions/appointment_data_source.dart';
import '../../infrastructure/data_source/abstarctions/auth_data_source.dart';
import '../../infrastructure/data_source/abstarctions/category_data_source.dart';
import '../../infrastructure/data_source/abstarctions/doctor_data_source.dart';
import '../../infrastructure/data_source/abstarctions/search_data_source.dart';
import '../../infrastructure/data_source/abstarctions/update_personal_data_source.dart';
import '../../infrastructure/data_source/implementations/appointment_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/auth_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/category_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/doctor_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/search_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/update_personal_data_source_impl.dart';

void registerDataSources() {
  getIt.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<CategoryDataSource>(
    CategoryDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<DoctorDataSource>(
    DoctorDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<AppointmentDataSource>(
    AppointmentDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<SearchDataSource>(
    SearchDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<UpdatePersonalDataSource>(
    UpdataPesonalDataSourceImpl(dioClient: getIt()),
  );
  getIt.registerSingleton<PatientDataSource>(
      PatientDataSourceImpl(dioClient: getIt()));
}
