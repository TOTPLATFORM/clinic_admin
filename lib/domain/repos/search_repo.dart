import '../../core/network/failure.dart';
import '../entities/doctors_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, DoctorsEntity>> searchDoctorByText(
      {required String text});
}
