import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final leagues = leaguesFromJson(jsonString);

import 'dart:convert';

Leagues leaguesFromJson(String str) => Leagues.fromJson(json.decode(str));

String leaguesToJson(Leagues data) => json.encode(data.toJson());
///=-------------
///------------------
///---------------


Taable taableFromJson(String str) => Taable.fromJson(json.decode(str));

String taableToJson(Taable data) => json.encode(data.toJson());


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
    client: json["client"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "client": client,
  };
}





class Taable {
  Taable({
    required this.filta,
    required this.area,
    required this.competition,
    required this.season,
    required this.standings,
  });

  final Filters filta;
  final Area area;
  final Competition competition;
  final Season season;
  final List<Standing> standings;

  factory Taable.fromJson(Map<String, dynamic> json) => Taable(
    filta: Filters.fromJson(json["filters"]),
    area: Area.fromJson(json["area"]),
    competition: Competition.fromJson(json["competition"]),
    season: Season.fromJson(json["season"]),
    standings: List<Standing>.from(json["standings"].map((x) => Standing.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "filters": filta.toJson(),
    "area": area.toJson(),
    "competition": competition.toJson(),
    "season": season.toJson(),
    "standings": List<dynamic>.from(standings.map((x) => x.toJson())),
  };
}

class Filta {
  Filta({
    required this.season,
  });

  final String season;

  factory Filta.fromJson(Map<String, dynamic> json) => Filta(
    season: json["season"],
  );

  Map<String, dynamic> toJson() => {
    "season": season,
  };
}

class Season {
  Season({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.currentMatchday,
    required this.winner,
  });

  final int id;
  final DateTime startDate;
  final DateTime endDate;
  final int currentMatchday;
  final dynamic winner;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
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

class Standing {
  Standing({
    required this.stage,
    required this.type,
    required this.table,
  });

  final String stage;
  final String type;
  final List<TableElement> table;

  factory Standing.fromJson(Map<String, dynamic> json) => Standing(
    stage: json["stage"].toString(),
    type: json["type"].toString(),
    table: List<TableElement>.from(json["table"].map((x) => TableElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "stage": stage.toString(),
    "type": type.toString(),
    "table": List<dynamic>.from(table.map((x) => x.toJson())),
  };
}

class TableElement {
  TableElement({
    required this.position,
    required this.team,
    required this.playedGames,
    required this.won,
    required this.draw,
    required this.lost,
    required this.points,
    required this.goalsFor,
    required this.goalsAgainst,
    required this.goalDifference,
  });

  final String position;
  final Team team;
  final String playedGames;
  final String won;
  final String draw;
  final String lost;
  final String points;
  final String goalsFor;
  final String goalsAgainst;
  final String goalDifference;

  factory TableElement.fromJson(Map<String, dynamic> json) => TableElement(
    position: json["position"].toString(),
    team: Team.fromJson(json["team"]),
    playedGames: json["playedGames"].toString(),
    won: json["won"].toString(),
    draw: json["draw"].toString(),
    lost: json["lost"].toString(),
    points: json["points"].toString(),
    goalsFor: json["goalsFor"].toString(),
    goalsAgainst: json["goalsAgainst"].toString(),
    goalDifference: json["goalDifference"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "position": position,
    "team": team.toJson(),
    "playedGames": playedGames,
    "won": won,
    "draw": draw,
    "lost": lost,
    "points": points,
    "goalsFor": goalsFor,
    "goalsAgainst": goalsAgainst,
    "goalDifference": goalDifference,
  };
}

class Team {
  Team({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crest,
  });

  final int id;
  final String name;
  final String shortName;
  final String tla;
  final String crest;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"],
    name: json["name"],
    shortName: json["shortName"],
    tla: json["tla"],
    crest: json["crest"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "shortName": shortName,
    "tla": tla,
    "crest": crest,
  };
}



