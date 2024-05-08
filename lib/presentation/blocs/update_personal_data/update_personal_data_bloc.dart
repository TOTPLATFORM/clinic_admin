import 'package:bloc/bloc.dart';
import '../../../app/contracts/update_personal_data.dart';
import '../../../app/core/primitives/inpust/register_input.dart';
import '../../../core/dependency_injection/di_container.dart';
import '../../../core/utils/shared_keys.dart';
import '../../../domain/entities/login_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_personal_data_bloc.freezed.dart';
part 'update_personal_data_event.dart';
part 'update_personal_data_state.dart';

class UpdatePersonalDataBloc
    extends Bloc<UpdatePersonalDataEvent, UpdatePersonalDataState> {
  final UpdatePersonalDataQuery updatePersonalDataQuery;
  UpdatePersonalDataBloc({required this.updatePersonalDataQuery})
      : super(const UpdatePersonalDataState.loading()) {
    on<UpdatePersonalDataEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () {},
        updatePersonalData: (value) async {
          emit(const UpdatePersonalDataState.loading());
          final res = await updatePersonalDataQuery.call(
            RegisterInput(
              username: value.username,
              password: value.password,
              firstName: value.firstName,
              lastName: value.lastName,
              email: value.email,
              phone: value.phone,
              patientId: value.patientId,
            ),
          );
          await res.fold(
            (l) async {
              emit(UpdatePersonalDataState.failure(message: l.message));
            },
            (r) async {
              if (r.isSuccess == true) {
                emit(UpdatePersonalDataState.success(loginEntity: r));
                preferences.setString(
                    SharedKeys.userName, r.value?.userName ?? "");
              } else {
                emit(UpdatePersonalDataState.failure(
                    message: r.errors?[0] ?? ""));
              }
            },
          );
        },
      );
    });
  }
}
