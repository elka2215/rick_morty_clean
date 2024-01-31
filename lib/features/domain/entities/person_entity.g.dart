// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPersonEntity _$AllPersonEntityFromJson(Map<String, dynamic> json) =>
    AllPersonEntity(
      info: InfoEntity.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllPersonEntityToJson(AllPersonEntity instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

InfoEntity _$InfoEntityFromJson(Map<String, dynamic> json) => InfoEntity(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
    );

Map<String, dynamic> _$InfoEntityToJson(InfoEntity instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
    };

ResultEntity _$ResultEntityFromJson(Map<String, dynamic> json) => ResultEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      location:
          LocationEntity.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$ResultEntityToJson(ResultEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };

LocationEntity _$LocationEntityFromJson(Map<String, dynamic> json) =>
    LocationEntity(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LocationEntityToJson(LocationEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
