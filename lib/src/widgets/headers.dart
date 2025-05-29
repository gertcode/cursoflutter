import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xFF615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xFF615AAB),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70))
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFF615AAB);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height*0.5);


    canvas.drawPath(path, lapiz);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}


class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFF615AAB);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}


class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFF615AAB);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    path.lineTo(size.width*0.5, size.height*0.30);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    //path.lineTo(size.width, 0);
    //path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFF615AAB);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.5, size.height*0.40, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

class HeaderWave extends StatelessWidget {
  const HeaderWave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFF615AAB);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    //path.lineTo(size.width*0.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.35, size.width*0.5, size.height*0.25);
    //path.lineTo(size.width, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.15, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(size.width, 0);
    //path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

class HeaderWaveGradient extends StatelessWidget {
  const HeaderWaveGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final Rect rect = Rect.fromCircle(center: const Offset(0, 55), radius: 180);

    final Gradient gradiente = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0,0.5,1.0],
      colors: <Color>[
      Color(0xff6D05E8),
      Color(0xffC012FF),
      Color(0xff6D05FA),
    ]);

    final lapiz = Paint()..shader= gradiente.createShader(rect);

    //Propiedades
    //lapiz.color = Colors.red;
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    //path.lineTo(size.width*0.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.35, size.width*0.5, size.height*0.25);
    //path.lineTo(size.width, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.15, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(size.width, 0);
    //path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}