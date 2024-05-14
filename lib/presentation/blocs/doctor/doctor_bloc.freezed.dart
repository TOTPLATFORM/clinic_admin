// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDoctors,
    required TResult Function(String id) getDoctorById,
    required TResult Function(String id) deleteDoctor,
    required TResult Function(AddDoctorInputs doctorData) addDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDoctors,
    TResult? Function(String id)? getDoctorById,
    TResult? Function(String id)? deleteDoctor,
    TResult? Function(AddDoctorInputs doctorData)? addDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDoctors,
    TResult Function(String id)? getDoctorById,
    TResult Function(String id)? deleteDoctor,
    TResult Function(AddDoctorInputs doctorData)? addDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllDoctors value) getAllDoctors,
    required TResult Function(_GetDoctorById value) getDoctorById,
    required TResult Function(_DeleteDoctor value) deleteDoctor,
    required TResult Function(_AddDoctor value) addDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllDoctors value)? getAllDoctors,
    TResult? Function(_GetDoctorById value)? getDoctorById,
    TResult? Function(_DeleteDoctor value)? deleteDoctor,
    TResult? Function(_AddDoctor value)? addDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllDoctors value)? getAllDoctors,
    TResult Function(_GetDoctorById value)? getDoctorById,
    TResult Function(_DeleteDoctor value)? deleteDoctor,
    TResult Function(_AddDoctor value)? addDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllDoctorsImplCopyWith<$Res> {
  factory _$$GetAllDoctorsImplCopyWith(
          _$GetAllDoctorsImpl value, $Res Function(_$GetAllDoctorsImpl) then) =
      __$$GetAllDoctorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllDoctorsImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetAllDoctorsImpl>
    implements _$$GetAllDoctorsImplCopyWith<$Res> {
  __$$GetAllDoctorsImplCopyWithImpl(
      _$GetAllDoctorsImpl _value, $Res Function(_$GetAllDoctorsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllDoctorsImpl implements _GetAllDoctors {
  const _$GetAllDoctorsImpl();

  @override
  String toString() {
    return 'DoctorEvent.getAllDoctors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllDoctorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDoctors,
    required TResult Function(String id) getDoctorById,
    required TResult Function(String id) deleteDoctor,
    required TResult Function(AddDoctorInputs doctorData) addDoctor,
  }) {
    return getAllDoctors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDoctors,
    TResult? Function(String id)? getDoctorById,
    TResult? Function(String id)? deleteDoctor,
    TResult? Function(AddDoctorInputs doctorData)? addDoctor,
  }) {
    return getAllDoctors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDoctors,
    TResult Function(String id)? getDoctorById,
    TResult Function(String id)? deleteDoctor,
    TResult Function(AddDoctorInputs doctorData)? addDoctor,
    required TResult orElse(),
  }) {
    if (getAllDoctors != null) {
      return getAllDoctors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllDoctors value) getAllDoctors,
    required TResult Function(_GetDoctorById value) getDoctorById,
    required TResult Function(_DeleteDoctor value) deleteDoctor,
    required TResult Function(_AddDoctor value) addDoctor,
  }) {
    return getAllDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllDoctors value)? getAllDoctors,
    TResult? Function(_GetDoctorById value)? getDoctorById,
    TResult? Function(_DeleteDoctor value)? deleteDoctor,
    TResult? Function(_AddDoctor value)? addDoctor,
  }) {
    return getAllDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllDoctors value)? getAllDoctors,
    TResult Function(_GetDoctorById value)? getDoctorById,
    TResult Function(_DeleteDoctor value)? deleteDoctor,
    TResult Function(_AddDoctor value)? addDoctor,
    required TResult orElse(),
  }) {
    if (getAllDoctors != null) {
      return getAllDoctors(this);
    }
    return orElse();
  }
}

abstract class _GetAllDoctors implements DoctorEvent {
  const factory _GetAllDoctors() = _$GetAllDoctorsImpl;
}

/// @nodoc
abstract class _$$GetDoctorByIdImplCopyWith<$Res> {
  factory _$$GetDoctorByIdImplCopyWith(
          _$GetDoctorByIdImpl value, $Res Function(_$GetDoctorByIdImpl) then) =
      __$$GetDoctorByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetDoctorByIdImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetDoctorByIdImpl>
    implements _$$GetDoctorByIdImplCopyWith<$Res> {
  __$$GetDoctorByIdImplCopyWithImpl(
      _$GetDoctorByIdImpl _value, $Res Function(_$GetDoctorByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDoctorByIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDoctorByIdImpl implements _GetDoctorById {
  const _$GetDoctorByIdImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DoctorEvent.getDoctorById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDoctorByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDoctorByIdImplCopyWith<_$GetDoctorByIdImpl> get copyWith =>
      __$$GetDoctorByIdImplCopyWithImpl<_$GetDoctorByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDoctors,
    required TResult Function(String id) getDoctorById,
    required TResult Function(String id) deleteDoctor,
    required TResult Function(AddDoctorInputs doctorData) addDoctor,
  }) {
    return getDoctorById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDoctors,
    TResult? Function(String id)? getDoctorById,
    TResult? Function(String id)? deleteDoctor,
    TResult? Function(AddDoctorInputs doctorData)? addDoctor,
  }) {
    return getDoctorById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDoctors,
    TResult Function(String id)? getDoctorById,
    TResult Function(String id)? deleteDoctor,
    TResult Function(AddDoctorInputs doctorData)? addDoctor,
    required TResult orElse(),
  }) {
    if (getDoctorById != null) {
      return getDoctorById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllDoctors value) getAllDoctors,
    required TResult Function(_GetDoctorById value) getDoctorById,
    required TResult Function(_DeleteDoctor value) deleteDoctor,
    required TResult Function(_AddDoctor value) addDoctor,
  }) {
    return getDoctorById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllDoctors value)? getAllDoctors,
    TResult? Function(_GetDoctorById value)? getDoctorById,
    TResult? Function(_DeleteDoctor value)? deleteDoctor,
    TResult? Function(_AddDoctor value)? addDoctor,
  }) {
    return getDoctorById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllDoctors value)? getAllDoctors,
    TResult Function(_GetDoctorById value)? getDoctorById,
    TResult Function(_DeleteDoctor value)? deleteDoctor,
    TResult Function(_AddDoctor value)? addDoctor,
    required TResult orElse(),
  }) {
    if (getDoctorById != null) {
      return getDoctorById(this);
    }
    return orElse();
  }
}

abstract class _GetDoctorById implements DoctorEvent {
  const factory _GetDoctorById({required final String id}) =
      _$GetDoctorByIdImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetDoctorByIdImplCopyWith<_$GetDoctorByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDoctorImplCopyWith<$Res> {
  factory _$$DeleteDoctorImplCopyWith(
          _$DeleteDoctorImpl value, $Res Function(_$DeleteDoctorImpl) then) =
      __$$DeleteDoctorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteDoctorImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$DeleteDoctorImpl>
    implements _$$DeleteDoctorImplCopyWith<$Res> {
  __$$DeleteDoctorImplCopyWithImpl(
      _$DeleteDoctorImpl _value, $Res Function(_$DeleteDoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteDoctorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteDoctorImpl implements _DeleteDoctor {
  const _$DeleteDoctorImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DoctorEvent.deleteDoctor(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDoctorImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDoctorImplCopyWith<_$DeleteDoctorImpl> get copyWith =>
      __$$DeleteDoctorImplCopyWithImpl<_$DeleteDoctorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDoctors,
    required TResult Function(String id) getDoctorById,
    required TResult Function(String id) deleteDoctor,
    required TResult Function(AddDoctorInputs doctorData) addDoctor,
  }) {
    return deleteDoctor(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDoctors,
    TResult? Function(String id)? getDoctorById,
    TResult? Function(String id)? deleteDoctor,
    TResult? Function(AddDoctorInputs doctorData)? addDoctor,
  }) {
    return deleteDoctor?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDoctors,
    TResult Function(String id)? getDoctorById,
    TResult Function(String id)? deleteDoctor,
    TResult Function(AddDoctorInputs doctorData)? addDoctor,
    required TResult orElse(),
  }) {
    if (deleteDoctor != null) {
      return deleteDoctor(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllDoctors value) getAllDoctors,
    required TResult Function(_GetDoctorById value) getDoctorById,
    required TResult Function(_DeleteDoctor value) deleteDoctor,
    required TResult Function(_AddDoctor value) addDoctor,
  }) {
    return deleteDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllDoctors value)? getAllDoctors,
    TResult? Function(_GetDoctorById value)? getDoctorById,
    TResult? Function(_DeleteDoctor value)? deleteDoctor,
    TResult? Function(_AddDoctor value)? addDoctor,
  }) {
    return deleteDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllDoctors value)? getAllDoctors,
    TResult Function(_GetDoctorById value)? getDoctorById,
    TResult Function(_DeleteDoctor value)? deleteDoctor,
    TResult Function(_AddDoctor value)? addDoctor,
    required TResult orElse(),
  }) {
    if (deleteDoctor != null) {
      return deleteDoctor(this);
    }
    return orElse();
  }
}

abstract class _DeleteDoctor implements DoctorEvent {
  const factory _DeleteDoctor({required final String id}) = _$DeleteDoctorImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteDoctorImplCopyWith<_$DeleteDoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDoctorImplCopyWith<$Res> {
  factory _$$AddDoctorImplCopyWith(
          _$AddDoctorImpl value, $Res Function(_$AddDoctorImpl) then) =
      __$$AddDoctorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddDoctorInputs doctorData});
}

/// @nodoc
class __$$AddDoctorImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$AddDoctorImpl>
    implements _$$AddDoctorImplCopyWith<$Res> {
  __$$AddDoctorImplCopyWithImpl(
      _$AddDoctorImpl _value, $Res Function(_$AddDoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorData = null,
  }) {
    return _then(_$AddDoctorImpl(
      doctorData: null == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as AddDoctorInputs,
    ));
  }
}

/// @nodoc

class _$AddDoctorImpl implements _AddDoctor {
  const _$AddDoctorImpl({required this.doctorData});

  @override
  final AddDoctorInputs doctorData;

  @override
  String toString() {
    return 'DoctorEvent.addDoctor(doctorData: $doctorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDoctorImpl &&
            (identical(other.doctorData, doctorData) ||
                other.doctorData == doctorData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDoctorImplCopyWith<_$AddDoctorImpl> get copyWith =>
      __$$AddDoctorImplCopyWithImpl<_$AddDoctorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDoctors,
    required TResult Function(String id) getDoctorById,
    required TResult Function(String id) deleteDoctor,
    required TResult Function(AddDoctorInputs doctorData) addDoctor,
  }) {
    return addDoctor(doctorData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDoctors,
    TResult? Function(String id)? getDoctorById,
    TResult? Function(String id)? deleteDoctor,
    TResult? Function(AddDoctorInputs doctorData)? addDoctor,
  }) {
    return addDoctor?.call(doctorData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDoctors,
    TResult Function(String id)? getDoctorById,
    TResult Function(String id)? deleteDoctor,
    TResult Function(AddDoctorInputs doctorData)? addDoctor,
    required TResult orElse(),
  }) {
    if (addDoctor != null) {
      return addDoctor(doctorData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllDoctors value) getAllDoctors,
    required TResult Function(_GetDoctorById value) getDoctorById,
    required TResult Function(_DeleteDoctor value) deleteDoctor,
    required TResult Function(_AddDoctor value) addDoctor,
  }) {
    return addDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllDoctors value)? getAllDoctors,
    TResult? Function(_GetDoctorById value)? getDoctorById,
    TResult? Function(_DeleteDoctor value)? deleteDoctor,
    TResult? Function(_AddDoctor value)? addDoctor,
  }) {
    return addDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllDoctors value)? getAllDoctors,
    TResult Function(_GetDoctorById value)? getDoctorById,
    TResult Function(_DeleteDoctor value)? deleteDoctor,
    TResult Function(_AddDoctor value)? addDoctor,
    required TResult orElse(),
  }) {
    if (addDoctor != null) {
      return addDoctor(this);
    }
    return orElse();
  }
}

abstract class _AddDoctor implements DoctorEvent {
  const factory _AddDoctor({required final AddDoctorInputs doctorData}) =
      _$AddDoctorImpl;

  AddDoctorInputs get doctorData;
  @JsonKey(ignore: true)
  _$$AddDoctorImplCopyWith<_$AddDoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DoctorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoctorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DoctorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DoctorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DoctorsEntity? doctors,
      DoctorEntity? doctor,
      bool addDoctor,
      bool deleteDoctor,
      bool isLoading});

  $DoctorsEntityCopyWith<$Res>? get doctors;
  $DoctorEntityCopyWith<$Res>? get doctor;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = freezed,
    Object? doctor = freezed,
    Object? addDoctor = null,
    Object? deleteDoctor = null,
    Object? isLoading = null,
  }) {
    return _then(_$SuccessImpl(
      doctors: freezed == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as DoctorsEntity?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorEntity?,
      addDoctor: null == addDoctor
          ? _value.addDoctor
          : addDoctor // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteDoctor: null == deleteDoctor
          ? _value.deleteDoctor
          : deleteDoctor // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorsEntityCopyWith<$Res>? get doctors {
    if (_value.doctors == null) {
      return null;
    }

    return $DoctorsEntityCopyWith<$Res>(_value.doctors!, (value) {
      return _then(_value.copyWith(doctors: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorEntityCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorEntityCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.doctors,
      this.doctor,
      this.addDoctor = false,
      this.deleteDoctor = false,
      this.isLoading = false});

  @override
  final DoctorsEntity? doctors;
  @override
  final DoctorEntity? doctor;
  @override
  @JsonKey()
  final bool addDoctor;
  @override
  @JsonKey()
  final bool deleteDoctor;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DoctorState.success(doctors: $doctors, doctor: $doctor, addDoctor: $addDoctor, deleteDoctor: $deleteDoctor, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.doctors, doctors) || other.doctors == doctors) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.addDoctor, addDoctor) ||
                other.addDoctor == addDoctor) &&
            (identical(other.deleteDoctor, deleteDoctor) ||
                other.deleteDoctor == deleteDoctor) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, doctors, doctor, addDoctor, deleteDoctor, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(doctors, doctor, addDoctor, deleteDoctor, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(doctors, doctor, addDoctor, deleteDoctor, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(doctors, doctor, addDoctor, deleteDoctor, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DoctorState {
  const factory _Success(
      {final DoctorsEntity? doctors,
      final DoctorEntity? doctor,
      final bool addDoctor,
      final bool deleteDoctor,
      final bool isLoading}) = _$SuccessImpl;

  DoctorsEntity? get doctors;
  DoctorEntity? get doctor;
  bool get addDoctor;
  bool get deleteDoctor;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DoctorState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DoctorsEntity? doctors, DoctorEntity? doctor,
            bool addDoctor, bool deleteDoctor, bool isLoading)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements DoctorState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
