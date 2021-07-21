import 'package:decor_app/New/Widgets/Drag_Box.dart';
import 'package:decor_app/New/Widgets/images.dart';
import 'package:flutter/material.dart';


class MyProvider with ChangeNotifier{

  List<Widget> providerDragItems =[
     DragBox(Offset(0.0, 0.0), 'Box Two', Colors.orange,decorImages[0]),
    DragBox(Offset(150.0, 0.0), 'Box Two', Colors.orange,decorImages[1]),
    DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[2]),
    DragBox(Offset(300.0, 0.0), 'Box Three', Colors.lightGreen,decorImages[3]),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;

  void changeFirst(){
    first= true;
    print("first is clicked");
    notifyListeners();
}
  void changeSecond(){
    second= true;
    print("first is clicked");
    notifyListeners();
  }
  void changeThird(){
    third= true;
    print("first is clicked");
    notifyListeners();
  }
  void changeFourth(){
    fourth= true;
    print("first is clicked");
    notifyListeners();
  }
  void delete1(){
    first = false;
    notifyListeners();
  }

  void delete2(){
    first = false;
    notifyListeners();
  }

  void delete3(){
    first = false;
    notifyListeners();
  }

  void delete4(){
    first = false;
    notifyListeners();
  }

  void backward1(){
    var temp = providerDragItems[4];
    // var image = image4;

      // image4=image1;
    providerDragItems[4]=providerDragItems[0];
    providerDragItems[0]=temp;
      // image1=image;

    notifyListeners();

  }


}