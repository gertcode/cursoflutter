import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    super.key,
  });

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> rotacion;

  @override
  void initState() {
    controller = AnimationController(vsync: this,duration: Duration(milliseconds: 4000));
    
    rotacion = Tween(begin: 0.0, end: 2 * Math.pi).animate(controller);


    controller.addListener((){

      print('Status: ${controller.status}');
      if(controller.status== AnimationStatus.completed){
        controller.reverse();
      } 
      /*else if(controller.status== AnimationStatus.dismissed){
        controller.forward();
      }*/

    });

    //controller.forward();
    
    super.initState();
  }


@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      //child: child,
      builder: (BuildContext context, Widget? child) {

        print("Rotación: $rotacion.value.toString()");

        return Transform.rotate(
          angle: rotacion.value,
          child: _Rectangulo());
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}