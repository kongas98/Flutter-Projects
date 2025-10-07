import 'package:flutter/material.dart';
import 'package:pdf_organizer/screens/home_screen.dart';

void main() {
  runApp(PdfOrganizerApp());
}

class PdfOrganizerApp extends StatelessWidget {
  const PdfOrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Organizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


