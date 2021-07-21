import 'package:decor_app/New/Cubit/cubit.dart';
import 'package:decor_app/New/Cubit/states.dart';
import 'package:decor_app/New/Widgets/images.dart';
import 'package:decor_app/New/provider/MyProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'Drag_Box.dart';


class DraggableItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyProvider>(context,listen: true);
    // List<Widget> dragItems =[
    //   DragBox(Offset(0.0, 0.0), 'Box Two', Colors.orange,decorImages[0]),
    //   DragBox(Offset(150.0, 0.0), 'Box Two', Colors.orange,decorImages[1]),
    //   DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[2]),
    //   DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[3]),
    //   Container(),
    //   Container(),
    //   Container(),
    //   Container(),
    // ];

    return  Stack(
          children: <Widget>[
          myProvider.first?
            myProvider.providerDragItems[0]:Container(),
    myProvider.second?
      myProvider.providerDragItems[1]:Container(),
    myProvider.third?
      myProvider.providerDragItems[2]:Container(),
    myProvider.fourth?
      myProvider.providerDragItems[3]:Container(),
    myProvider.first?
      myProvider.providerDragItems[4]:Container(),
    myProvider.second?
      myProvider.providerDragItems[5]:Container(),
    myProvider.third?
      myProvider.providerDragItems[6]:Container(),
    myProvider.fourth?
      myProvider.providerDragItems[7]:Container()
    ],




);



}
}