import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project_rick_morty/features/presentation/cubit/person_cubit/person_cubit.dart';
import 'package:my_project_rick_morty/features/presentation/cubit/person_cubit/person_state.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key});

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PersonCubit>().getPersons(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PersonCubit, PersonState>(
        builder: (context, state) {
          if (state is PersonLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PersonLoadedState) {
            return Center(child: Text(state.personEntity.results[1].name));
          } else if (state is PersonErrorState) {
            return Center(child: Text(state.error));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
