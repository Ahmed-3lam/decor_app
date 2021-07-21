import 'package:bloc/bloc.dart';
import 'package:decor_app/New/Cubit/states.dart';
import 'package:decor_app/New/Widgets/Drag_Box.dart';
import 'package:decor_app/New/Widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);


  // List <String> decorImages =[
  //   "http://asascity.com/wp-content/uploads/2020/10/kisspng-couch-mid-century-modern-table-sofa-bed-furniture-a-sofa-5a7d4a01c667b5.2114360815181603858127.png",
  //   "https://pngimg.com/uploads/sofa/sofa_PNG6934.png",
  //   "https://cdn.picpng.com/sofa/sofa-illustration-35093.png",
  //   "https://freepngimg.com/thumb/sofa/22647-2-sofa-transparent-image-thumb.png",
  // ];

  List<Widget> dragItems =[
    DragBox(Offset(0.0, 0.0), 'Box Two', Colors.orange,decorImages[0]),
    DragBox(Offset(150.0, 0.0), 'Box Two', Colors.orange,decorImages[1]),
    DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[2]),
    DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[3]),
    Container(),
    Container(),
    Container(),
    Container(),
  ];


  void getFirst(bool isShow){
    isShow=false;
    first = isShow;
    print("get first = true");
    emit(AddedState());
  }
  bool getSecond(){
    return second = true;
    emit(AddedState());
  }
  bool getThird(){
   return third = true;
    emit(AddedState());
  }
  bool getFourth(){
     return fourth = true;
    emit(AddedState());
  }



  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;




}