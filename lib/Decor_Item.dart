
import 'package:flutter/material.dart';

import 'Home_Screen.dart';
import 'List.dart';
import 'List2.dart';
class DecorItem extends StatefulWidget {
  final int index;
  const DecorItem({Key? key, required this.index}) : super(key: key);

  @override
  _DecorItemState createState() => _DecorItemState();
}

class _DecorItemState extends State<DecorItem> {
  @override
  Widget build(BuildContext context) {
    void forward({required int index}){
      setState(() {
        secondaryItems[1]=secondaryItems[0];
        secondaryItems[1]=secondaryItems[2];
        secondaryItems[2]=secondaryItems[3];
        secondaryItems[3]=mainItems[index];
      });
    }
    return Container(
      padding: EdgeInsets.all(8),
      width: 160, height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.lightGreen[300],),
      child: Column(
        children: [
          Material(
            elevation: 1,
            borderRadius:BorderRadius.all(Radius.circular(10)) ,
            child: Container(
              padding: EdgeInsets.all(5),
              height: 120.0,
              width: 120.0,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.lightGreen[300],


                image: DecorationImage(
                  image: NetworkImage(
                      image1),
                  fit: BoxFit.fill,
                ),

              ),
            ),
          ),
          Text("Sofa",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text("Rate: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Icon(Icons.star,color: Colors.yellow,size: 20,),
              Icon(Icons.star,color: Colors.yellow,size: 20,),
              Icon(Icons.star,color: Colors.yellow,size: 20,),
              Icon(Icons.star,color: Colors.yellow,size: 20,),
              Icon(Icons.star,color: Colors.yellow,size: 20,),
            ],
          ),
          CircleAvatar(
              child: IconButton(
                  onPressed: (){
                    setState(() {
                      first=true;
                      forward(index: 0);

                    });
                  },
                  icon:Icon(Icons.add)),
              backgroundColor:  Colors.blue
          )
        ],
      ),

    );
  }
}

