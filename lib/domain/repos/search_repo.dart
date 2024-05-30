import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/doctors_entity.dart';

abstract class SearchRepo {
  Future<Either<Failure, DoctorsEntity>> searchDoctorByText(
      {required String text});
}
