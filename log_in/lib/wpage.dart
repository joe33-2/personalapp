import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart'; 

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String location = "Loading...";
  String temperature = "--";
  String weatherIcon = "☀️";
 

  final String apiKey = "e3d03369252b836d0a79d93e442164b5"; // Replace this

  @override
  void initState() {
    super.initState();

    _getWeather();
  }

  Future<void> _getWeather() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final url = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          location = data['name'];
          temperature = data['main']['temp'].toStringAsFixed(0);
          String condition = data['weather'][0]['main'];

          if (condition == "Clouds") {
            weatherIcon = "☁️";
          } else if (condition == "Rain") {
            weatherIcon = "🌧️";
          } else if (condition == "Clear") {
            weatherIcon = "☀️";
          } else {
            weatherIcon = "🌤️";
          }
        });
      }
    } catch (e) {
      setState(() {
        location = "Error getting weather";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String TOdayDate = DateFormat('MM/dd/yyyy').format(DateTime.now());
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Weather',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  TOdayDate,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Location: $location",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      weatherIcon,
                      style: const TextStyle(fontSize: 80),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "$temperature °C",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
