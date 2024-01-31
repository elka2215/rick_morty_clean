import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project_rick_morty/app_main.dart';
import 'package:my_project_rick_morty/core/injections/injections.dart';
import 'package:my_project_rick_morty/features/presentation/cubit/person_cubit/person_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  locator.allReady();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<PersonCubit>(
        create: (context) => locator(),
      ),
    ],
    child: const MyApp(),
  ));
}
