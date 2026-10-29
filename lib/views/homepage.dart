
import 'package:bangtang/model/button_glow.dart';
import 'package:flutter/material.dart';
import 'package:bangtang/model/constants.dart';
import 'package:bangtang/model/card_global.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;


  //**BACKGROUND ANIMATE**//
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
            weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
      ],
    ).animate(_controller);
    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
            tween:  Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
            weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween:  Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween:  Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween:  Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
      ]
    ).animate(_controller);

    _controller.repeat();
  }

  var val = 1;
  final List<String> items= [
    'BTS',
    'TWICE',
    'NEW JEANS',
  ];
  String? selectedValue;

  late Color buttonSC = buttonStartColor_bts;
  late Color buttonEC = buttonEndtColor_bts;

  late Color bStartColor = gradientStartColor_bts;
  late Color bEndColor = gradientEndColor_bts;
  late Image icons_ = Image.asset("assets/bts_icon.png", scale: 1.2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context,_){
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [bStartColor, bEndColor],
                begin: _topAlignmentAnimation.value,
                end: _bottomAlignmentAnimation.value,
              ),
            ),
            child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        children: <Widget>[
                          const Row(
                            children: [
                              Text(
                                'K-POP',
                                style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 40,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                  child: DropdownButton<String>(
                                    hint: const Text('BTS',
                                      style: TextStyle(fontSize: 15, color: Colors.black54),
                                    ),
                                    items: items.map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Center(child: Text (item,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54,
                                          ))),
                                    )).toList(),
                                    value: selectedValue,
                                    onChanged: onChanged,
                                    icon: Padding(
                                      padding: EdgeInsets.zero,
                                      child: icons_,
                                    ),
                                    underline: const SizedBox(),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CardWidget_(selection: val),
                            ButtonGlow(color1: buttonSC, color2: buttonEC),
                          ],
                        ),
                  ],
                )),
          );
        },
      ),
    );
  }

  void onChanged(String? value){
    setState(() {
      selectedValue = value;
    });
    switch(value){
      case 'BTS':
        val = 1;
        bStartColor = gradientStartColor_bts;
        bEndColor = gradientEndColor_bts;

        buttonSC = buttonStartColor_bts;
        buttonEC = buttonEndtColor_bts;

        icons_ = Image.asset("assets/bts_icon.png", scale: 1.2);
        break;
      case 'TWICE':
        val = 2;
        bStartColor = gradientStartColor_twice;
        bEndColor = gradientEndColor_twice;

        buttonSC = buttonStartColor_twice;
        buttonEC = buttonEndtColor_twice;

        icons_ = Image.asset("assets/twice_icon.png", scale: 14);
        break;
      case 'NEW JEANS':
        val = 3;
        bStartColor = gradientStartColor_nj;
        bEndColor = gradientEndColor_nj;

        buttonSC = buttonStartColor_nj;
        buttonEC = buttonEndtColor_nj;

        icons_ = Image.asset("assets/nj_icon.png", scale: 10);
        break;
    }
  }
}