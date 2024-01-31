import 'package:dartz/dartz.dart';
import 'package:my_project_rick_morty/core/error/failure.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<Either<Failure, AllPersonEntity>> getAllPerson(int page);
  Future<Either<Failure, AllPersonEntity>> searchPerson(String query);
}
