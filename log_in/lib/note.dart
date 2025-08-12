import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteScreen extends StatefulWidget {
  final String? title;
  final String? content;

  const NoteScreen({super.key, this.title, this.content});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  late String todayDate;

  @override
  void initState() {
    super.initState();

    todayDate = DateFormat('MM/dd/yyyy').format(DateTime.now());

    _titleController = TextEditingController(text: widget.title ?? '');
    _contentController = TextEditingController(text: widget.content ?? '');
  }

  void _saveNote() {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();
    if (title.isNotEmpty) {
      Navigator.pop(context, {
        'title': title,
        'content': content,
        'date': todayDate,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveNote,
            color: Colors.black,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            // Row to put Title TextField and Date on the same line
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title field takes most space
                Expanded(
                  child: TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: 'Title',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Date label (big, bold, styled)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Text(
                    todayDate,
                    style: const TextStyle(
                      fontSize: 18, // Bigger font
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Content TextField
            Expanded(
              child: TextField(
                controller: _contentController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
