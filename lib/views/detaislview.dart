import 'package:bangtang/model/datas.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget{
  final DataInfo? dataInfo;
  const DetailsView({super.key, this.dataInfo});

  @override
  State<StatefulWidget> createState() => _DetailsViewState();

}

class _DetailsViewState extends State<DetailsView>{
  @override
  Widget build(BuildContext context) {

    var velocity = 100;
    var deltaX = 5;

    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: (details){
          if(details.delta.dx <= deltaX){
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 32),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Text(
                          widget.dataInfo!.name.toString(),
                          style: const TextStyle(
                            fontSize: 55,
                            fontFamily: 'Avenir',
                            color: Color(0xFF414C6B),
                            fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          widget.dataInfo!.group.toString(),
                          style: const TextStyle(
                            fontSize: 30,
                            fontFamily: 'Avenir',
                            color: Color(0xFF414C6B),
                            fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left,
                        ),
                        const Divider(
                          color: Colors.black38,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 140,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            child: Text(
                              widget.dataInfo!.description.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis,
                                fontFamily: 'Avenir',
                                color: Color(0xff868686),
                                fontWeight: FontWeight.w400),
                              textAlign: TextAlign.left,
                              maxLines: 60,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(
                          color: Colors.black38,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Galery",
                          style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                              fontFamily: 'Avenir',
                              color: Color(0xff868686),
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                          maxLines: 40,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.dataInfo!.images!.length,
                              itemBuilder: (context, index){
                                return Card(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.network(
                                      widget.dataInfo!.images![index],
                                      fit: BoxFit.cover,
                                    ),),
                                );
                              },
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Positioned(
                right: -40,
                child: Hero(
                  tag: widget.dataInfo!.position,
                  child: Image.asset(widget.dataInfo!.iconImage.toString(),width: 300, height: 300))
              ),
              Positioned(
                  top: 60,
                  left: 32,
                  child: Text(
                    widget.dataInfo!.position.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 247,
                      color: Colors.grey.withOpacity(0.2)),
                  ),),
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
            ],
          ),
        ),
      ),
    );
  }
}
