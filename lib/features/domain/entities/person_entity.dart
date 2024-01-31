import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'person_entity.g.dart';

@JsonSerializable()
class AllPersonEntity extends Equatable {
  final InfoEntity info;
  final List<ResultEntity> results;

  const AllPersonEntity({
    required this.info,
    required this.results,
  });
  factory AllPersonEntity.fromJson(Map<String, dynamic> json) =>
      _$AllPersonEntityFromJson(json);
  @override
  List<Object?> get props => [
        info,
        results,
      ];
}

@JsonSerializable()
class InfoEntity extends Equatable {
  final int count;
  final int pages;
  final String next;

  const InfoEntity({
    required this.count,
    required this.pages,
    required this.next,
  });

  factory InfoEntity.fromJson(Map<String, dynamic> json) =>
      _$InfoEntityFromJson(json);
  @override
  List<Object?> get props => [
        count,
        pages,
        next,
      ];
}

@JsonSerializable()
class ResultEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;

  const ResultEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
  factory ResultEntity.fromJson(Map<String, dynamic> json) =>
      _$ResultEntityFromJson(json);
  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        location,
        image,
        episode,
        url,
        created,
      ];
}

@JsonSerializable()
class LocationEntity extends Equatable {
  final String name;
  final String url;

  const LocationEntity({
    required this.name,
    required this.url,
  });
  factory LocationEntity.fromJson(Map<String, dynamic> json) =>
      _$LocationEntityFromJson(json);
  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
