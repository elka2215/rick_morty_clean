import 'package:equatable/equatable.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';

abstract class PersonState extends Equatable {
  const PersonState();
  @override
  List<Object?> get props => [];
}

class PersonInitialState extends PersonState {
  @override
  List<Object?> get props => [];
}

class PersonLoadingState extends PersonState {
  final bool isFirst;
  final AllPersonEntity? oldPersonEntity;
  const PersonLoadingState({
    this.isFirst = false,
    this.oldPersonEntity,
  });

  @override
  List<Object?> get props => [isFirst];
}

class PersonLoadedState extends PersonState {
  final AllPersonEntity personEntity;

  const PersonLoadedState({required this.personEntity});
  @override
  List<Object?> get props => [personEntity];
}

class PersonErrorState extends PersonState {
  final String error;

  const PersonErrorState({required this.error});
  @override
  List<Object?> get props => [error];
}
