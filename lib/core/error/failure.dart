// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ServerFailure extends Failure {}

class UnhandledFailure extends Failure {}

class CacheFailure extends Failure {}
