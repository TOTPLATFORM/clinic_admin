import 'package:clinic_admin/app/contracts/patients.dart';
import 'package:clinic_admin/app/contracts/time_slot.dart';
import 'package:clinic_admin/app/queries/add_doctor_query_impl.dart';
import 'package:clinic_admin/app/queries/add_time_slot_query_impl.dart';
import 'package:clinic_admin/app/queries/get_all_patients_query_impl.dart';
import 'package:clinic_admin/app/queries/get_time_slots_query_impl.dart';

import '../../app/contracts/appointment.dart';
import '../../app/contracts/auth.dart';
import '../../app/contracts/category.dart';
import '../../app/contracts/doctor.dart';
import '../../app/contracts/update_personal_data.dart';
import '../../app/queries/get_all_doctors_query_impl.dart';
import '../../app/queries/get_appointments_query.dart';
import '../../app/queries/get_cayegory_query_impl.dart';
import '../../app/queries/get_doctor_by_id_query_impl.dart';
import '../../app/queries/get_doctors_by_specialty_impl.dart';
import '../../app/queries/login_query_impl.dart';
import '../../app/queries/register_query_impl.dart';
import '../../app/queries/update_personal_data_query_impl.dart';
import 'di_container.dart';

void registerQueries() {
  getIt.registerSingleton<LoginQuery>(
    LoginQueryImpl(
      authRepo: getIt(),
    ),
  );
  getIt.registerSingleton<AddDoctorQuery>(AddDoctorQueryImpl(
    doctorRepo: getIt(),
  ));
  getIt.registerSingleton<RegisterQuery>(
    RegisterQueryImpl(
      authRepo: getIt(),
    ),
  );
  getIt.registerSingleton<GetCategoryQuery>(
    GetCategoryQueryImpl(categoryRepo: getIt()),
  );
  getIt.registerSingleton<GetDoctorByIdQuery>(
    GetDoctorByIdQueryImpl(doctorRepo: getIt()),
  );
  getIt.registerSingleton<GetDoctorsQuery>(
    GetDoctorsQueryImpl(doctorRepo: getIt()),
  );
  getIt.registerSingleton<GetDoctorsBySpecialtyQuery>(
    GetDoctorsBySpecialtyQueryImpl(categoryRepo: getIt()),
  );
  getIt.registerSingleton<GetAppointmentQuery>(
    GetAppointmentsQueryImpl(repo: getIt()),
  );
  getIt.registerSingleton<UpdatePersonalDataQuery>(
      UpdatePersonalDataQueryImpl(updatePersonalDataRepo: getIt()));
  getIt.registerSingleton<GetPatientsQuery>(
      GetPatientsQueryImpl(patientsRepo: getIt()));
  getIt.registerSingleton<GetTimeSlotsQuery>(
      GetTimeSlotsQueryImpl(timeSlotRepo: getIt()));
  getIt.registerSingleton<AddTimeSlotQuery>(
      AddTimeSlotQueryImpl(timeSlotRepo: getIt()));
  
}
