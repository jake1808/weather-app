import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/domain/usecases/get_weather.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  GetWeatherData? usecase;
  MockWeatherRepository? mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetWeatherData(mockWeatherRepository!);
  });

  final tCity = "lusaka";
  final tWeatherData = const WeatherEntity(
    coord: Coord(lat: -15.4067, lon: 28.2871),
    weather:
        Weather(id: 800, main: "clear", description: "clear sky", icon: "01n"),
    base: "base",
    main: Main(
        temp: 297.49,
        feels_like: 296.82,
        temp_min: 297.49,
        temp_max: 297.49,
        pressure: 1010,
        humidity: 32,
        sea_level: 1010,
        grnd_level: 874),
    visibility: 10000,
    wind: Wind(speed: 3.56, deg: 107, gust: 8.7),
    cloud: Cloud(all: 5),
    dt: 1633110421,
    sys: Sys(country: "ZM", sunrise: 1633060165, sunset: 1633104207),
    timezone: 7200,
    id: 909137,
    name: "Lusaka",
    cod: 200,
  );

  test('should get weather data from the repository', () async {
    when(mockWeatherRepository!.getWeatherData(any))
        .thenAnswer((_) async => Right(tWeatherData));

    final result = await usecase!.execute(city: tCity);

    expect(result, Right(tWeatherData));

    verify(mockWeatherRepository!.getWeatherData(tCity));

    verifyNoMoreInteractions(mockWeatherRepository);
  });
}
