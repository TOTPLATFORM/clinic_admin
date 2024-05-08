import '../contracts/search.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchDoctorByTextCommandImpl implements SearchDoctorByTextCommand {
  final SearchRepo searchRepo;

  SearchDoctorByTextCommandImpl({required this.searchRepo});
  @override
  Future<Either<Failure, DoctorsEntity>> call(String params) {
    return searchRepo.searchDoctorByText(text: params);
  }
}
