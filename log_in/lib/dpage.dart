import 'package:flutter/material.dart';
import 'note.dart';
import 'package:intl/intl.dart'; 


class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  List<Map<String, String>> savedNotes = [];

  void _addOrEditNote({Map<String, String>? existingNote, int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NoteScreen(
          title: existingNote?['title'] ?? '',
          content: existingNote?['content'] ?? '',
        ),
      ),
    );

    if (result != null && result is Map<String, String>) {
      setState(() {
        if (index != null) {
          savedNotes[index] = result; 
        } else {
          savedNotes.add(result);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String TodayDate = DateFormat('MM/dd/yyyy').format(DateTime.now());
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addOrEditNote(),
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Diary',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  TodayDate,
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
                child: savedNotes.isEmpty
                    ? const SizedBox()
                    : SingleChildScrollView(
                        child: Column(
                          children: savedNotes.asMap().entries.map((entry) {
                            int index = entry.key;
                            Map<String, String> note = entry.value;

                            return GestureDetector(
                              onTap: () => _addOrEditNote(
                                existingNote: note,
                                index: index,
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 156, 156, 156),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        note['title'] ?? '',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      color: Colors.red,
                                      onPressed: () {
                                        setState(() {
                                          savedNotes.removeAt(index);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
