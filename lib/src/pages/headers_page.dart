import 'package:flutter/material.dart';

import 'package:custompainter/src/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderWaveGradient(),
    );
  }
}