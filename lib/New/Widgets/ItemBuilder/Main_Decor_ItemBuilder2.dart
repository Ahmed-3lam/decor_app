import 'package:decor_app/New/Cubit/cubit.dart';
import 'package:decor_app/New/Cubit/states.dart';
import 'package:decor_app/New/provider/MyProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';


class MainDecorItemsBuilder2 extends StatelessWidget {
  final String image1;
  final String image2;




  MainDecorItemsBuilder2(this.image1, this.image2,);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context,listen: false);
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: 160,
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.lightGreen[300],
          ),
          child: Column(
            children: [
              Material(
                elevation: 1,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    color: Colors.lightGreen[300],
                    image: DecorationImage(
                      image: NetworkImage(image1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                "Sofa",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Rate: ",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ],
              ),
              CircleAvatar(
                  child: IconButton(
                      onPressed: () {
// cubit.getFirst(true);
                        provider.changeThird();
                      },
                      icon: Icon(Icons.add)),
                  backgroundColor: Colors.blue)
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: 160,
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.lightGreen[300],
          ),
          child: Column(
            children: [
              Material(
                elevation: 1,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    color: Colors.lightGreen[300],
                    image: DecorationImage(
                      image: NetworkImage(image2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                "Sofa",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Rate: ",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ],
              ),
              CircleAvatar(
                child: IconButton(
                    onPressed: () {
                      provider.changeFourth();
                      print("Second is clicked");
                    },
                    icon: Icon(Icons.add)),
                backgroundColor: Colors.blue,
              )
            ],
          ),
        ),
      ],
    );



  }}
