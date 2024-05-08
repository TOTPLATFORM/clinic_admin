import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/search_repo.dart';
import '../data_source/abstarctions/search_data_source.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo {
  final SearchDataSource searchDataSource;

  SearchRepoImpl({required this.searchDataSource});
  @override
  Future<Either<Failure, DoctorsEntity>> searchDoctorByText(
      {required String text}) async {
    try {
      final res = await searchDataSource.searchDoctorByText(query: text);
      return Right(
        DoctorsEntity.fromJson(res),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
