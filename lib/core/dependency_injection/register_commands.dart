import '../../app/commands/add_appointment_command_impl.dart';
import '../../app/commands/delete_appointment_command_impl.dart';
import '../../app/commands/delete_doctor_command_impl.dart';
import '../../app/commands/delete_time_slot_command_impl.dart';
import '../../app/contracts/time_slot.dart';

import '../../app/commands/search_doctor_by_command_impl.dart';
import '../../app/contracts/appointment.dart';
import '../../app/contracts/doctor.dart';
import '../../app/contracts/search.dart';
import 'di_container.dart';

void registerCommands() {
  getIt.registerSingleton<DeleteAppointmentCommand>(
      DeleteAppointmentCommandImpl(appointmentRepo: getIt()));
  getIt.registerSingleton<AddAppointmentCommand>(
      AddAppointmentCommandImpl(appointmentRepo: getIt()));

  getIt.registerSingleton<DeleteTimeSlotCommand>(
      DeleteTimeSlotCommandImpl(timeSlotRepo: getIt()));

  getIt.registerSingleton<SearchDoctorByTextCommand>(
      SearchDoctorByTextCommandImpl(searchRepo: getIt()));

  getIt.registerSingleton<DeleteDoctorCommand>(
      DeleteDoctorCommandImpl(repo: getIt()));
}
