import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'random_verse.dart';

class SpecialfeatureScreen extends StatelessWidget {
  const SpecialfeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String todayDate = DateFormat('MM/dd/yyyy').format(DateTime.now());
    String verse = RandomVerse.getTodayVerse();

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Bible',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  todayDate,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Verse container
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    verse,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
