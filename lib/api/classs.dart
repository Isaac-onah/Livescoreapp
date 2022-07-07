import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final leagues = leaguesFromJson(jsonString);

import 'dart:convert';

Leagues leaguesFromJson(String str) => Leagues.fromJson(json.decode(str));

String leaguesToJson(Leagues data) => json.encode(data.toJson());

class Leagues {
  Leagues({
    required this.count,
    required this.filters,
    required this.competitions,
  });

  int count;
  Filters filters;
  List<Competition> competitions;

  factory Leagues.fromJson(Map<String, dynamic> json) => Leagues(
    count: json["count"],
    filters: Filters.fromJson(json["filters"]),
    competitions: List<Competition>.from(json["competitions"].map((x) => Competition.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "filters": filters.toJson(),
    "competitions": List<dynamic>.from(competitions.map((x) => x.toJson())),
  };
}

class Competition {
  Competition({
    required this.id,
    required this.area,
    required this.name,
    required this.code,
    required this.type,
    required this.emblem,
    required this.plan,
    required this.currentSeason,
    required this.numberOfAvailableSeasons,
    required this.lastUpdated,
  });

  int id;
  Area area;
  String name;
  String code;
  String type;
  String emblem;
  String plan;
  CurrentSeason currentSeason;
  int numberOfAvailableSeasons;
  DateTime lastUpdated;

  factory Competition.fromJson(Map<String, dynamic> json) => Competition(
    id: json["id"],
    area: Area.fromJson(json["area"]),
    name: json["name"],
    code: json["code"],
    type: json["type"],
    emblem: json["emblem"],
    plan: json["plan"],
    currentSeason: CurrentSeason.fromJson(json["currentSeason"]),
    numberOfAvailableSeasons: json["numberOfAvailableSeasons"],
    lastUpdated: DateTime.parse(json["lastUpdated"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "area": area.toJson(),
    "name": name,
    "code": code,
    "type": type,
    "emblem": emblem,
    "plan": plan,
    "currentSeason": currentSeason.toJson(),
    "numberOfAvailableSeasons": numberOfAvailableSeasons,
    "lastUpdated": lastUpdated.toIso8601String(),
  };
}

class Area {
  Area({
    required this.id,
    required this.name,
    required this.code,
    required this.flag,
  });

  int id;
  String name;
  String code;
  String flag;

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    id: json["id"],
    name: json["name"],
    code: json["code"],
    flag: json["flag"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "code": code,
    "flag": flag,
  };
}

class CurrentSeason {
  CurrentSeason({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.currentMatchday,
    this.winner,
  });

  int id;
  DateTime startDate;
  DateTime endDate;
  int currentMatchday;
  dynamic winner;

  factory CurrentSeason.fromJson(Map<String, dynamic> json) => CurrentSeason(
    id: json["id"],
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    currentMatchday: json["currentMatchday"],
    winner: json["winner"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "startDate": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "endDate": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "currentMatchday": currentMatchday,
    "winner": winner,
  };
}


class Filters {
  Filters({
    required this.client,
  });

  String client;

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
    client: json["client"],
  );

  Map<String, dynamic> toJson() => {
    "client": client,
  };
}
