import 'package:open_meteo_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    test('fromJson should initialize correct properties', () {
      final weatherJson = <String, dynamic>{
        'temperature': 25.0,
        'weathercode': 101.0
      };

      final weather = Weather.fromJson(weatherJson);

      expect(weather.temperature, 25.0);
      expect(weather.weatherCode, 101.0);
    });
  });
}
