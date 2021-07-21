import 'package:decor_app/New/provider/MyProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DragBox extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;
  final String image;

  DragBox(
    this.initPos,
    this.label,
    this.itemColor,
      this.image,
  );

  @override
  _DragBoxState createState() => _DragBoxState();
}


class _DragBoxState extends State<DragBox> {
  Offset position = Offset(0.0, 0.0);
  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context,listen: false);
    // position = this.widget.initPos;
    return Positioned(
        left: position.dx,
        top: position.dy,
        child: Draggable(
          data: this.widget.itemColor,
          child: InteractiveViewer(
            minScale: .001,
            maxScale: 100.9,
              boundaryMargin: EdgeInsets.all(100),
            child: GestureDetector(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Text("Choose the action you want?"),
                          content:
                              Text("forward or backword or delete the item?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  myProvider.backward1();
                                  Navigator.of(context).pop(true);
                                },
                                child: Text("backword")),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: Text("forward")),
                            TextButton(
                                onPressed: () {

                                  myProvider.delete1();
                                  Navigator.of(context).pop(true);
                                },
                                child: Text("delete"))
                          ],
                        ));
              },
              child: InteractiveViewer(
                minScale: .1,
                maxScale: 100.2,
                boundaryMargin: EdgeInsets.all(100),
                child: Center(
                  child:Image.network(
                    widget.image,
                    width: 200,
                    height: 200,

                  ),
                ),
              ),
            ),
          ),
          onDraggableCanceled: (velocity, offset) {
            //setState ToDo
            setState(() {
              position = offset;
            });

          },
          feedback: InteractiveViewer(
            minScale: .001,
            maxScale: 100.9,
            boundaryMargin: EdgeInsets.all(100),
            child: GestureDetector(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Choose the action you want?"),
                      content:
                      Text("forward or backword or delete the item?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text("backword")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text("forward")),
                        TextButton(
                            onPressed: () {


                              Navigator.of(context).pop(true);
                            },
                            child: Text("delete"))
                      ],
                    ));
              },
              child: InteractiveViewer(
                minScale: .1,
                maxScale: 100.2,
                boundaryMargin: EdgeInsets.all(100),
                child: Center(
                  child:Image.network(
                    widget.image,
                    width: 200,
                    height: 200,

                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
