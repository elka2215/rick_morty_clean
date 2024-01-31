// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/data/data_sources/remote_data_source/person_remote_data_source.dart'
    as _i4;
import '../../features/data/repositories/person_repository_impl.dart' as _i6;
import '../../features/domain/repositories/person_repository.dart' as _i5;
import '../../features/domain/usecases/get_all_persons.dart' as _i8;
import '../../features/domain/usecases/search_person.dart' as _i7;
import '../../features/presentation/cubit/person_cubit/person_cubit.dart'
    as _i9;
import '../service/dio_module.dart' as _i10;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final modules = _$Modules();
  gh.factory<String>(
    () => modules.baseUrl,
    instanceName: 'Base_url',
  );
  gh.lazySingleton<_i3.Dio>(
      () => modules.dio(gh<String>(instanceName: 'Base_url')));
  gh.lazySingleton<_i4.PersonRemoteDataSource>(
      () => _i4.RemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i5.PersonRepository>(() => _i6.PersonRepositoryImpl(
      remoteDataSource: gh<_i4.PersonRemoteDataSource>()));
  gh.lazySingleton<_i7.SearchPerson>(
      () => _i7.SearchPerson(gh<_i5.PersonRepository>()));
  gh.factory<_i8.GetAllPersons>(
      () => _i8.GetAllPersons(gh<_i5.PersonRepository>()));
  gh.lazySingleton<_i9.PersonCubit>(
      () => _i9.PersonCubit(gh<_i8.GetAllPersons>()));
  return getIt;
}

class _$Modules extends _i10.Modules {}
