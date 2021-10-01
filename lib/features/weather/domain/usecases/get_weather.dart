import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';

import '../repositories/weather_repository.dart';

class GetWeatherData {
  final WeatherRepository repository;

  GetWeatherData(this.repository);

  Future<Either<Failure, WeatherEntity>?> execute(
      {required String city}) async {
    return await repository.getWeatherData(city);
  }
}
