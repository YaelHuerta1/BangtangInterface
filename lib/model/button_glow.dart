import 'package:flutter/material.dart';
import 'package:bangtang/views/discoview.dart';

class ButtonGlow extends StatefulWidget {
  final color1;
  final color2;
  const ButtonGlow({super.key, this.color1 = Colors.cyan, this.color2 = Colors.lightGreen});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonGlowState createState() => _ButtonGlowState();
}

class _ButtonGlowState extends State<ButtonGlow> {
  var glowing = false;
  var scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (val){
        setState(() {
          glowing = false;
          scale =  1.0;
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Discoview())
          );
        });
      },
      onTapDown: (val){
        setState(() {
          glowing = true;
          scale = 1.1;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.identity()..scale(scale),
          duration: const Duration(milliseconds: 100),
          height: 50,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(colors: [
              widget.color1,
              widget.color2
            ]),
            boxShadow: glowing?[
              BoxShadow(
                color: widget.color1.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 16,
                offset: const Offset(-8, 0)
              ),
              BoxShadow(
                  color: widget.color2.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 16,
                  offset: const Offset(8, 0)
              ),
              BoxShadow(
                  color: widget.color1.withOpacity(0.2),
                  spreadRadius: 16,
                  blurRadius: 32,
                  offset: const Offset(-8, 0)
              ),
              BoxShadow(
                  color: widget.color2.withOpacity(0.2),
                  spreadRadius: 16,
                  blurRadius: 32,
                  offset: const Offset(8, 0)
              ),
            ]: []
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              glowing? Icons.lightbulb : Icons.lightbulb_outline,
              color: Colors.white,
            ),
            Text(glowing? 'DISCOGRAPHY' : 'Discography',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
