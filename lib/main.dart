import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'get_forecast.dart';

void main() {
  debugPaintSizeEnabled = true;
  print(fetchJson());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Первый блок
                  Container(
                    color: Colors.black45,
                    child: Column(
                      children: [
                        Text('October 15'),
                        Text('Location'),
                        Text('Temperature + Icon'),
                        Text('Weather desc'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // почасовой везкаст
                  Container(
                    child: Column(
                      children: [
                        Text('Прогноз по часам'),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,

                            itemCount: 24,
                            itemBuilder: (context, index) {
                              return HourlyItem(
                                temperature: 10.0 + index,
                                icon: Icons.wb_sunny,
                                precipitationChance: 20,
                                time: '$index:00',
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Осадки и ветер
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Icon + Title'),
                          Text('amount'),
                          Text('description'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('icon + title'),
                          Text('speed'),
                          Text('direction'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HourlyItem extends StatelessWidget {
  const HourlyItem({
    super.key,
    required this.temperature,
    required this.icon,
    required this.precipitationChance,
    required this.time,
  });

  final double temperature;
  final IconData icon;
  final int precipitationChance;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${temperature.round()}°'),
        Icon(icon),
        Text('$precipitationChance%'),
        Text(time),
      ],
    );
  }
}
