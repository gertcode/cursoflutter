import 'package:custompainter/src/pages/animaciones_page.dart';
import 'package:custompainter/src/labs/circular_progress_page.dart';
import 'package:custompainter/src/pages/file_page.dart';
import 'package:custompainter/src/pages/graficas_circulares_page.dart';
import 'package:custompainter/src/retos/cuadrado_animado_page.dart';
import 'package:flutter/material.dart';

import 'package:custompainter/src/pages/headers_page.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FilePage(),
      ),
    );
  }
}
