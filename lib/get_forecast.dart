import 'package:http/http.dart' as http;

import 'dart:convert';

Future<Map<String, dynamic>> fetchJson() async {
  final url = Uri.parse(
    'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,weather_code,wind_speed_10m,relative_humidity_2m,wind_direction_10m,precipitation_probability,precipitation&forecast_days=1',
  );

  // Make the network request
  final response = await http.get(url);

  // Check if the server returned a 200 OK response
  if (response.statusCode == 200) {
    // Decode the raw JSON string into a Dart Map
    return jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    // Throw an exception if the server response wasn't optimal
    throw Exception('Failed to load data: ${response.statusCode}');
  }
}
