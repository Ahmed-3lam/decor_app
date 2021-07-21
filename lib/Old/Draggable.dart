import 'package:flutter/material.dart';

import 'DecorItems/dragBox4.dart';
import 'DecorItems/dragbox2.dart';
import 'DecorItems/dragbox3.dart';
import 'Home_Screen.dart';
import 'List.dart';


class DraggableItem1 extends StatefulWidget {
  const DraggableItem1({Key? key}) : super(key: key);

  @override
  _DraggableItem1State createState() => _DraggableItem1State();
}
List<Widget> dragItems =[
 DragBox1(Offset(0.0, 0.0), 'Box Two', Colors.orange),
 DragBox2(Offset(150.0, 0.0), 'Box Two', Colors.orange),
 DragBox3(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen),
 DragBox4(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen),
  Container(),
  Container(),
  Container(),
  Container(),
];

class _DraggableItem1State extends State<DraggableItem1> {


  @override
  Widget build(BuildContext context) {
    Color caughtColor = Colors.deepPurple;

    return Stack(
      children: <Widget>[
        if(first)
          dragItems[0],
        if (second)
          dragItems[1],
        if(third)
          dragItems[2],
        if(fourth)
          dragItems[3],
        if(first)
          dragItems[4],
        if(second)
          dragItems[5],
        if(third)
          dragItems[6],
        if(fourth)
          dragItems[7]

      ],
    )


    ;
  }
}


class DragBox1 extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;


  DragBox1(this.initPos, this.label, this.itemColor,);

@override
  DragBox1State createState() => DragBox1State();
}

class DragBox1State extends State<DragBox1> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    void backward1(){
      var temp = dragItems[4];
      // var image = image4;
      setState(() {
        // image4=image1;
        dragItems[4]=dragItems[0];
        dragItems[0]=temp;
        // image1=image;
      });
    }

    void forward1(){
      var temp = dragItems[0];

      // var image = image1;
      setState(() {

        dragItems[0]=dragItems[4];
        dragItems[4]=temp;
        // image1=image4;
        // image4=image;
      });
    }

    return Positioned(
        left: position.dx,
        top: position.dy,
        child: Draggable(
          data: widget.itemColor,
          child: InteractiveViewer(
            minScale: .1,
            maxScale: 100.2,
            child: GestureDetector(
              onLongPress: (){
                setState(() {
                  showDialog(context: context,
                      builder: (ctx)=>AlertDialog(
                        title: Text("Choose the action you want?"),
                        content: Text("forward or backword or delete the item?"),
                        actions: [
                          TextButton(onPressed: (){


                            setState(() {
                              backward1();
                            });

                            Navigator.of(context).pop(true);
                          }, child: Text("backword")),
                          TextButton(onPressed: (){
                            setState(() {
                              forward1();
                            });


                            Navigator.of(context).pop(true);
                          }, child: Text("forward")),
                          TextButton(onPressed: (){
                            setState(() {
                              first=false;
                              print("delete");

                            });

                            Navigator.of(context).pop(true);
                          }, child: Text("delete"))
                        ],
                      ));

                });






              },
              child: mainItems[0],
            ),
          ),
          onDraggableCanceled: (velocity, offset) {
            setState(() {
              position = offset;
            });
          },
          feedback: Container(),
        ));
  }
}
