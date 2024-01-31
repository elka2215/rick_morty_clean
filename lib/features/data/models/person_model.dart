import 'package:json_annotation/json_annotation.dart';
import 'package:my_project_rick_morty/features/domain/entities/person_entity.dart';

part 'person_model.g.dart';

@JsonSerializable()
class PersonModel extends AllPersonEntity {
  const PersonModel({
    required Info info,
    required List<Result> results,
  }) : super(info: info, results: results);

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() {
    return {
      'info': info,
      'results': results,
    };
  }
}

@JsonSerializable()
class Info extends InfoEntity {
  const Info({
    required int count,
    required int pages,
    required String next,
  }) : super(count: count, pages: pages, next: next);

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@JsonSerializable()
class Result extends ResultEntity {
  const Result({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required Location location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) : super(
          id: id,
          name: name,
          status: status,
          species: species,
          type: type,
          gender: gender,
          location: location,
          image: image,
          episode: episode,
          url: url,
          created: created,
        );

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@JsonSerializable()
class Location extends LocationEntity {
  const Location({
    required String name,
    required String url,
  }) : super(name: name, url: url);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
