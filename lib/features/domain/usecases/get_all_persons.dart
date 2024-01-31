import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/core/error/failure.dart';
import 'package:my_project_rick_morty/core/usercases/usecase.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';
import 'package:my_project_rick_morty/features/domain/repositories/person_repository.dart';

@injectable
class GetAllPersons extends UseCase<AllPersonEntity, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons(this.personRepository);

  @override
  Future<Either<Failure, AllPersonEntity>> call(PagePersonParams params) async {
    final personRepo = await personRepository.getAllPerson(params.page);
    log(personRepo.runtimeType.toString());
    return personRepo;
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({required this.page});
  @override
  List<Object?> get props => [page];
}
