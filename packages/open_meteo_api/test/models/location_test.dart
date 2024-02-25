import 'package:open_meteo_api/src/models/models.dart';
import 'package:test/test.dart';


void main() {
  group('Location', () {
    const id = 1;
    const name = 'Test Location';
    const latitude = 12.3456;
    const longitude = 65.4321;

    test('creates Location object correctly', () {
      final location = Location(
        id: id,
        name: name,
        latitude: latitude,
        longitude: longitude,
      );

      expect(location.id, id);
      expect(location.name, name);
      expect(location.latitude, latitude);
      expect(location.longitude, longitude);
    });

    test('creates Location object from json correctly', () {
      final location = Location.fromJson({
        'id': id,
        'name': name,
        'latitude': latitude,
        'longitude': longitude,
      });

      expect(location.id, id);
      expect(location.name, name);
      expect(location.latitude, latitude);
      expect(location.longitude, longitude);
    });
  });
}