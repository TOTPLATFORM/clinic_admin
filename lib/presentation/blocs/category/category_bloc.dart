import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/contracts/category.dart';
import '../../../app/core/primitives/inpust/no_params.dart';
import '../../../domain/entities/category_entity.dart';
import '../../../domain/entities/doctors_entity.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoryQuery getCategoryQuery;
  final GetDoctorsBySpecialtyQuery getDoctorBySpecialtyQuery;
  CategoryBloc(
      {required this.getCategoryQuery, required this.getDoctorBySpecialtyQuery})
      : super(
          const CategoryState.initial(),
        ) {
    on<CategoryEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () {},
        getAllCategory: (event) async {
          emit(const CategoryState.loading());
          final result = await getCategoryQuery.call(NoParams());
          result.fold(
            (l) {
              emit(
                CategoryState.failure(
                  message: l.message,
                ),
              );
            },
            (r) {
              if (r.isSuccess == true) {
                emit(CategoryState.success(
                  categories: r,
                ));
              } else {
                emit(CategoryState.failure(
                  message: r.errors?[0] ?? "",
                ));
              }
            },
          );
        },
        getDoctorsBySpecialityId: (value) async {
          final result =
              await getDoctorBySpecialtyQuery.call(value.specialityId);
          await result.fold(
            (l) async {
              emit(
                CategoryState.failure(
                  message: l.message,
                ),
              );
            },
            (r) async {
              if (r.isSuccess == true) {
                state.maybeMap(
                  orElse: () {},
                  success: (s) => emit(
                    s.copyWith(doctors: r),
                  ),
                );
              } else {
                emit(
                  CategoryState.failure(
                    message: r.errors?[0] ?? "",
                  ),
                );
              }
            },
          );
        },
      );
    });
  }
}
