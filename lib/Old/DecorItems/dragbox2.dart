import 'package:flutter/material.dart';

import '../List.dart';

class DragBox2 extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;



  DragBox2(this.initPos, this.label, this.itemColor, );

  @override
  DragBox2State createState() => DragBox2State();
}

class DragBox2State extends State<DragBox2> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position.dx,
        top: position.dy,
        child: Draggable(
          data: widget.itemColor,
          child: GestureDetector(
            onLongPress: (){
              setState(() {
                showDialog(context: context,
                    builder: (ctx)=>AlertDialog(
                      title: Text(" forward or backword?"),
                      content: Text("Do you want to forward or backword the item?"),
                      actions: [
                        TextButton(onPressed: (){

                          Navigator.of(context).pop(true);
                        }, child: Text("backword")),
                        TextButton(onPressed: (){

                          Navigator.of(context).pop(true);
                        }, child: Text("forward")),
                        TextButton(onPressed: (){
                          setState(() {

                          });

                          Navigator.of(context).pop(true);
                        }, child: Text("delete"))
                      ],
                    ));

              });






            },
            child: mainItems[1],
          ),
          onDraggableCanceled: (velocity, offset) {
            setState(() {
              position = offset;
            });
          },
          feedback: GestureDetector(
            onLongPress: (){
              setState(() {
                showDialog(context: context,
                    builder: (ctx)=>AlertDialog(
                      title: Text(" forward or backword?"),
                      content: Text("Do you want to forward or backword the item?"),
                      actions: [
                        TextButton(onPressed: (){

                          Navigator.of(context).pop(true);
                        }, child: Text("backword")),
                        TextButton(onPressed: (){

                          Navigator.of(context).pop(true);
                        }, child: Text("forward")),
                        TextButton(onPressed: (){
                          setState(() {

                          });

                          Navigator.of(context).pop(true);
                        }, child: Text("delete"))
                      ],
                    ));

              });






            },
            child: mainItems[1],
          ),
        ));
  }
}