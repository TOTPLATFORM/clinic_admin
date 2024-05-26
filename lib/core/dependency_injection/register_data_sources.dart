import 'package:clinic_admin/infrastructure/data_source/abstractions/patients_data_source.dart';
import 'package:clinic_admin/infrastructure/data_source/abstractions/time_slot_data_source.dart';
import 'package:clinic_admin/infrastructure/data_source/implementations/patients_data_source_impl.dart';
import 'package:clinic_admin/infrastructure/data_source/implementations/time_slot_data_source_impl.dart';

import '../../infrastructure/data_source/abstractions/schedule_data_source.dart';
import '../../infrastructure/data_source/implementations/schedule_data_source_impl.dart';
import 'di_container.dart';
import '../../infrastructure/data_source/abstractions/appointment_data_source.dart';
import '../../infrastructure/data_source/abstractions/auth_data_source.dart';
import '../../infrastructure/data_source/abstractions/category_data_source.dart';
import '../../infrastructure/data_source/abstractions/doctor_data_source.dart';
import '../../infrastructure/data_source/abstractions/search_data_source.dart';
import '../../infrastructure/data_source/abstractions/update_personal_data_source.dart';
import '../../infrastructure/data_source/implementations/appointment_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/auth_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/category_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/doctor_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/search_data_source_impl.dart';
import '../../infrastructure/data_source/implementations/update_personal_data_source_impl.dart';

void registerDataSources() {
   getIt.registerSingleton<ScheduleDataSource>(
    ScheduleDataSourceImpl(dioClient: getIt()),
  );
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
  getIt.registerSingleton<TimeSlotDataSource>(
      TimeSlotDataSourceImpl(baseDio: getIt()));
}
