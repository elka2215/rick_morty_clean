import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/core/error/failure.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';
import 'package:my_project_rick_morty/features/domain/usecases/get_all_persons.dart';
import 'package:my_project_rick_morty/features/presentation/cubit/person_cubit/person_state.dart';

@LazySingleton()
class PersonCubit extends Cubit<PersonState> {
  final GetAllPersons getAllPersons;
  PersonCubit(this.getAllPersons) : super(PersonInitialState());
  int page = 1;

  void getPersons(int page) async {
    emit(const PersonLoadingState());
    try {
      Either<Failure, AllPersonEntity> result =
          await getAllPersons.call(PagePersonParams(page: page));
      result.fold(
        (failure) => emit(PersonErrorState(error: failure.toString())),
        (allPersonEntity) =>
            emit(PersonLoadedState(personEntity: allPersonEntity)),
      );
    } catch (e) {
      emit(PersonErrorState(error: e.toString()));
    }
  }

  // void getPersons(int page) async {
  //   if (state is PersonLoadingState) return;
  //   final currentState = state;
  //   var oldPerson = <AllPersonEntity>[];
  //   if (currentState is PersonLoadedState) {
  //     oldPerson = currentState.personEntity;
  //   }
  //   emit(PersonLoadingState(oldPersonEntity: oldPerson, isFirst: page == 1));

  //   final failurePerson = await getAllPersons(PagePersonParams(page: page));
  //   failurePerson.fold((l) => const PersonErrorState(error: 'error'), (r) {
  //     page++;
  //     final person = (state as PersonLoadingState).oldPersonEntity;
  //     person!.addAll(r);
  //     emit(PersonLoadedState(personEntity: person));
  //   });
  // }
}
