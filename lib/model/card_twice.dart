import 'package:flutter/material.dart';
import 'package:bangtang/model/datas.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../views/detaislview.dart';

class CardWidget_twice extends StatefulWidget{
  const CardWidget_twice({super.key});

  @override
  State<StatefulWidget> createState() => _CardWidget_twice();

}

// ignore: camel_case_types
class _CardWidget_twice extends State<CardWidget_twice> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 100),
        child: Swiper(
          itemCount: data_twice.length,
          fade: 0.3,
          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
          layout: SwiperLayout.STACK,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  activeSize: 20,
                  activeColor: Colors.yellow.shade300,
                  space: 5)),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (context, a, b) =>
                          DetailsView(
                            dataInfo: data_twice[index],
                          ),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation, Widget child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ));
              },
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 100,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        elevation: 8,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                width: 150,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 100.0),
                                child: Text(
                                  data_twice[index].name.toString(),
                                  style: const TextStyle(
                                      fontSize: 35,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff47455f)),
                                  textAlign: TextAlign.left,
                                ),),
                              const Text(
                                "TWICE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23,
                                    fontFamily: 'Avenir',
                                    color: Color(0xFF414C6B)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 32.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Know more",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Avenir',
                                          color: Color(0xFFE4979E),
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.left,
                                    ),
                                    Icon(Icons.arrow_forward_rounded,
                                        color: Color(0xFFE4979E), size: 18)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    child: Hero(
                      tag: data_twice[index].position,
                      child: Image.asset(
                          data_twice[index].iconImage.toString(), height: 220,
                          width: 220,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}