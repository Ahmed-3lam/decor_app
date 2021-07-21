import 'package:decor_app/New/Cubit/cubit.dart';
import 'package:decor_app/New/Cubit/states.dart';
import 'package:decor_app/New/Widgets/Draggable_Items.dart';
import 'package:decor_app/New/Widgets/ItemBuilder/Main_Decor_ItemBuilder.dart';
import 'package:decor_app/New/Widgets/ItemBuilder/Main_Decor_ItemBuilder2.dart';
import 'package:decor_app/New/Widgets/images.dart';
import 'package:decor_app/New/provider/MyProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DecorScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    print("build screen");
    // var myProvider= Provider.of<MyProvider>(context,listen: false);
    return Scaffold(
          body:
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: DraggableItems(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blueGrey,
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                        children: [
                          MainDecorItemsBuilder(decorImages[0], decorImages[1],),
                          SizedBox(
                            height: 10,
                          ),
                          MainDecorItemsBuilder2(decorImages[2], decorImages[3],)

                        ]
                    ),
                  ))
            ],
          ),




        );



  }
}


