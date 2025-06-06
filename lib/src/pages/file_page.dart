import 'package:flutter/material.dart';

class FilePage extends StatelessWidget {
  const FilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Color(0xFF1b243a),
              child: CustomPaint(
              painter: _MyFolder(),
      ),
            ),
      ),
    );
  }
}

class _MyFolder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final lapiz = Paint();

    //Propiedades
    lapiz.color = const Color(0xFFc9e7a0);
    //lapiz.style = PaintingStyle.stroke;//solo hace la linea
    lapiz.style = PaintingStyle.fill;//Rellena
    lapiz.strokeWidth = 4;

    double porcentajeCurvas = size.width * 0.05;//20
    final path = Path();

    /*path.moveTo(size.width*0.05, 0);
    path.lineTo(size.height*0.05, size.width*0.05);
    path.lineTo(size.height*0.05, size.height-(size.height*0.05));
    path.lineTo(size.width*0.05, size.height);
    path.lineTo(size.width*0.05, size.height);
    path.lineTo(size.width-(size.width*0.05), size.height-(size.height*0.05));*/

    path.moveTo(porcentajeCurvas, 0);//A
    path.quadraticBezierTo(0,0,0,porcentajeCurvas);//B
    path.lineTo(0, size.height-porcentajeCurvas);//C
    path.quadraticBezierTo(0,size.width/2-(porcentajeCurvas/2),porcentajeCurvas,(size.width/2)-porcentajeCurvas/2);//D
    path.lineTo(size.width-porcentajeCurvas, size.height);//E
    path.quadraticBezierTo(size.width,size.height,size.width,size.height-porcentajeCurvas);//F
    path.lineTo(size.width, (size.height/2)-porcentajeCurvas);//G
    path.quadraticBezierTo(size.width,porcentajeCurvas*3,size.width-porcentajeCurvas,porcentajeCurvas*3);//H
    path.lineTo((size.height/2)+porcentajeCurvas*2, porcentajeCurvas*3);//I
    path.quadraticBezierTo((size.height/2)+porcentajeCurvas,porcentajeCurvas*3,(size.height/2)+porcentajeCurvas,porcentajeCurvas*2);//J
    path.lineTo((size.height/2)+porcentajeCurvas, porcentajeCurvas);//K
    path.quadraticBezierTo((size.height/2)+porcentajeCurvas,0,size.height/2,0);//L
    path.lineTo(porcentajeCurvas, 0);//A

    print('Porcentaje Curvas: ${porcentajeCurvas}');




    
    /*path.lineTo(0, 100);

    //path.quadraticBezierTo(10,110,10,110);

    path.lineTo(10, 110);
    path.lineTo(size.width-10, 110);
    path.lineTo(size.width, 100);
    path.lineTo(size.width,40);*/

    canvas.drawPath(path, lapiz);

    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}