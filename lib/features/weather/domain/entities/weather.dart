// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final Coord coord;
  final Weather weather;
  final String base;
  final Main main;
  final int visibility;
  final Wind wind;
  final Cloud cloud;
  final int dt;
  final Sys sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  const WeatherEntity({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.cloud,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  @override
  List<Object> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        cloud,
        dt,
        sys,
        timezone,
        name,
        cod,
      ];
}

class Sys extends Equatable {
  final String country;
  final int sunrise;
  final int sunset;

  const Sys({
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  @override
  List<Object> get props => [
        country,
        sunrise,
        sunset,
      ];
}

class Cloud extends Equatable {
  final int all;

  const Cloud({
    required this.all,
  });

  @override
  List<Object> get props => [all];
}

class Wind extends Equatable {
  final double speed;
  final double deg;
  final double gust;

  const Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  @override
  List<Object> get props => [
        speed,
        deg,
        gust,
      ];
}

class Main extends Equatable {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;
  final int sea_level;
  final int grnd_level;

  const Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });

  @override
  List<Object> get props => [
        temp,
        feels_like,
        temp_min,
        temp_max,
        pressure,
        humidity,
        sea_level,
        grnd_level,
      ];
}

class Weather extends Equatable {
  final int id;
  final String main;
  final String description;
  final String icon;

  const Weather(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  @override
  List<Object> get props => [id, main, description, icon];
}

class Coord extends Equatable {
  final double lon;
  final double lat;

  const Coord({
    required this.lon,
    required this.lat,
  });

  @override
  List<Object> get props => [lon, lat];
}
