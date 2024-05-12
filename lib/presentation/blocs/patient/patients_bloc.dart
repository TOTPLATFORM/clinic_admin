import 'package:bloc/bloc.dart';
import 'package:clinic_admin/app/contracts/patients.dart';
import 'package:clinic_admin/app/core/primitives/inputs/no_params.dart';
import 'package:clinic_admin/domain/entities/patient_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patients_bloc.freezed.dart';
part 'patients_event.dart';
part 'patients_state.dart';

class PatientsBloc extends Bloc<PatientsEvent, PatientsState> {
  final GetPatientsQuery _getPatientsQuery;
  PatientsBloc({required GetPatientsQuery getPatientsQuery})
      : _getPatientsQuery = getPatientsQuery,
        super(_Loading()) {
    on<PatientsEvent>((event, emit) async {
      await event.when(getAll: () async {
        final response = await _getPatientsQuery.call(NoParams());
        response.fold(
          (l) => emit(_Failure(l.message)),
          (r) => emit(_Success(r)),
        );
      });
    });
  }
}
