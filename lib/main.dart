import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Первый блок
                Container(
                  child: Column(
                    children: [
                      Text('October 15'),
                      Text('Location'),
                      Text('Temperature + Icon'),
                      Text('Weather desc'),
                    ],
                  ),
                ),
                // почасовой везкаст
                Container(
                  child: Column(
                    children: [
                      Text('Title'),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('degrees'),
                                Text('Icon'),
                                Text('precipitation chance'),
                                Text('Time'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('degrees'),
                                Text('Icon'),
                                Text('precipitation chance'),
                                Text('Time'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('degrees'),
                                Text('Icon'),
                                Text('precipitation chance'),
                                Text('Time'),
                              ],
                            ),
                          ],
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
    );
  }
}
