import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/features/data/models/person_model.dart';
import 'package:dio/dio.dart';
import 'package:my_project_rick_morty/core/error/exception.dart';

abstract class PersonRemoteDataSource {
  Future<PersonModel> getAllPersons(int page);
  Future<PersonModel> searchPerson(String query);
}

@LazySingleton(as: PersonRemoteDataSource)
class RemoteDataSourceImpl implements PersonRemoteDataSource {
  final Dio dio;

  RemoteDataSourceImpl({required this.dio});
  @override
  Future<PersonModel> getAllPersons(int page) async {
    final response = await dio.get(
      '/character/?page=$page',
    );
    try {
      return PersonModel.fromJson(response.data);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<PersonModel> searchPerson(String query) async {
    final response =
        await dio.get('https://rickandmortyapi.com/api/character/?name=$query');
    try {
      return PersonModel.fromJson(response.data);
    } catch (e) {
      throw ServerException();
    }
  }
}
