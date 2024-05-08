import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/contracts/search.dart';
import '../../../domain/entities/doctors_entity.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchDoctorByTextCommand searchDoctorByTextCommand;
  SearchBloc({required this.searchDoctorByTextCommand})
      : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.maybeMap(
          orElse: () {},
          searchDoctorByText: (value) async {
            emit(const SearchState.loading());
            final result = await searchDoctorByTextCommand.call(value.text);
            await result.fold((l) async {
              emit(SearchState.failure(
                message: l.message,
              ));
            }, (r) async {
              if (r.isSuccess == true) {
                emit(SearchState.success(doctors: r));
              } else {
                emit(
                  SearchState.failure(
                    message: r.errors?[0] ?? "",
                  ),
                );
              }
            });
          });
    });
  }
}
