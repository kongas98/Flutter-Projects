import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<File> pdfFiles = [];

  Future<void> pickPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      print("Επέλεξε PDF: ${result.files.single.name}");
      File file = File(result.files.single.path!);

      // Αποθήκευση στο internal storage
      final appDir = await getApplicationDocumentsDirectory();
      final newPath = '${appDir.path}/${result.files.single.name}';
      final newFile = await file.copy(newPath);

      setState(() {
        pdfFiles.add(newFile);
      });
    } else {
      print("Ο χρήστης ακύρωσε την επιλογή.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Organizer'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: pickPdf,
            child: Text('Πρόσθεσε PDF'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pdfFiles.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pdfFiles[index].path.split('/').last),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}