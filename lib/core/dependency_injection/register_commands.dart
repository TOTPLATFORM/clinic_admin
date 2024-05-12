import 'package:clinic_admin/app/commands/delete_doctor_command_impl.dart';

import '../../app/commands/add_appointment_command_impl.dart';
import '../../app/commands/delete_appointment_command_impl.dart';
import '../../app/commands/search_doctor_by_command_impl.dart';
import '../../app/commands/update_appointment_command_impl.dart';
import '../../app/contracts/appointment.dart';
import '../../app/contracts/doctor.dart';
import '../../app/contracts/search.dart';
import 'di_container.dart';

void registerCommands() {
  getIt.registerSingleton<AddAppointmentCommand>(AppointmentCommandImpl(
    repo: getIt(),
  ));

  getIt
      .registerSingleton<UpdateAppointmentCommand>(UpdateAppointmentCommandImpl(
    repo: getIt(),
  ));
  getIt.registerSingleton<DeletAppointmentCommand>(DeletAppointmentCommandImpl(
    repo: getIt(),
  ));
  getIt.registerSingleton<SearchDoctorByTextCommand>(
      SearchDoctorByTextCommandImpl(
    searchRepo: getIt(),
  ));
  getIt.registerSingleton<DeleteDoctorCommand>(
      DeleteDoctorCommandImpl(repo: getIt()));
}
