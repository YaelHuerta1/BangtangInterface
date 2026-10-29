import 'package:flutter/material.dart';
import 'package:bangtang/model/datas.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import '../views/detaislview.dart';

class CardWidget_ extends StatefulWidget{
  final int? selection;
  const CardWidget_({super.key, required this.selection});

  @override
  State<CardWidget_> createState() => _CardWidget_State();
}

class _CardWidget_State extends State<CardWidget_> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 20),
        child: Swiper(
          itemCount: data_length(),
          fade: 0.3,
          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
          layout: SwiperLayout.STACK,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  activeSize: 20,
                  activeColor: Colors.yellow.shade300,
                  space: 5)),
          itemBuilder: (context, index) {
            DataInfo idol = data_info(index);
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (context, a, b) =>
                          DetailsView(
                            dataInfo: idol,
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
                                  idol.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 35,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff47455f)),
                                  textAlign: TextAlign.left,
                                ),),
                              Text(
                                idol.group.toString(),
                                style: const TextStyle(
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
                  Positioned.fill(
                    child:Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                      tag: idol.position,
                      child: Image.asset(
                        idol.iconImage.toString(),
                        height: 220,
                        width: 220,
                        ),
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

  //**DATAS CONDITIONS**//
  data_length(){
    if(widget.selection == 1){
      return data_bts.length;
    }else if(widget.selection == 2){
      return data_twice.length;
    }else if(widget.selection == 3){
      return data_nj.length;
    }
  }

  data_info(index){
    if(widget.selection == 1){
      return data_bts[index];
    }else if(widget.selection == 2){
      return data_twice[index];
    }else if(widget.selection == 3){
      return data_nj[index];
    }
  }
}

