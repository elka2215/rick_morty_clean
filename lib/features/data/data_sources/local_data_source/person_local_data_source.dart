// import 'package:injectable/injectable.dart';
// import 'package:my_project_rick_morty/features/data/models/person_model.dart';

// abstract class PersonLocalDataSource {
//   Future<PersonModel> getLastPersonsFromCache();
//   Future<void> personsToCache(PersonModel persons);
// }

// @LazySingleton(as: PersonLocalDataSource)
// class PersonLocalDataSourceImpl implements PersonLocalDataSource {
//   PersonLocalDataSourceImpl();

//   @override
//   Future<PersonModel> getLastPersonsFromCache() {
//     // TODO: implement getLastPersonsFromCache
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> personsToCache(PersonModel persons) {
//     // TODO: implement personsToCache
//     throw UnimplementedError();
//   }
// }
//   // @override
//   // Future<PersonModel> getLastPersonsFromCache() {
//   //   final jsonPersonsList =
//   //       sharedPreferences.getStringList(Variables.CACHED_PERSONS_LIST);
//   //   if (jsonPersonsList!.isNotEmpty) {
//   //     return Future.value(jsonPersonsList
//   //         .map((e) => PersonModel.fromJson(json.decode(e)))
//   //         .toList());
//   //   } else {
//   //     throw CacheException();
//   //   }
//   // }

//   // @override
//   // Future<void> personsToCache(PersonModel persons) {
//   //   final List<String> jsonPersonsList =
//   //       persons.map((e) => json.encode(e.toJson())).toList();
//   //   sharedPreferences.setStringList(
//   //       Variables.CACHED_PERSONS_LIST, jsonPersonsList);
//   //   return Future.value();
//   // }

