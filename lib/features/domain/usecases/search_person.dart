import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/core/error/failure.dart';
import 'package:my_project_rick_morty/core/usercases/usecase.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';
import 'package:my_project_rick_morty/features/domain/repositories/person_repository.dart';

@lazySingleton
class SearchPerson extends UseCase<AllPersonEntity, SearchPersonParams> {
  final PersonRepository personRepository;

  SearchPerson(this.personRepository);

  @override
  Future<Either<Failure, AllPersonEntity>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  const SearchPersonParams({required this.query});
  @override
  List<Object?> get props => [query];
}
