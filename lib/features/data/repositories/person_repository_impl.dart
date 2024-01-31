import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/core/error/exception.dart';
import 'package:my_project_rick_morty/core/error/failure.dart';
import 'package:my_project_rick_morty/features/data/data_sources/remote_data_source/person_remote_data_source.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';
import 'package:my_project_rick_morty/features/domain/repositories/person_repository.dart';

@LazySingleton(as: PersonRepository)
class PersonRepositoryImpl implements PersonRepository {
  final PersonRemoteDataSource remoteDataSource;

  PersonRepositoryImpl({
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, AllPersonEntity>> getAllPerson(int page) async {
    try {
      final remotePerson = await remoteDataSource.getAllPersons(page);
      return Right(remotePerson);
    } on ServerException {
      return Left(ServerFailure());
    } catch (e) {
      return Left(UnhandledFailure());
    }
  }

  @override
  Future<Either<Failure, AllPersonEntity>> searchPerson(String query) async {
    try {
      final remotePerson = await remoteDataSource.searchPerson(query);
      return Right(remotePerson);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
