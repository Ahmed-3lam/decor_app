import 'package:flutter/material.dart';

import 'Home_Screen.dart';

List<Widget> mainItems =[
  InteractiveViewer(
      minScale: .1,
      maxScale: 100.2,
      boundaryMargin: EdgeInsets.all(100),


      child: Center(
        child:Image.network(
          image1,
          width: 300,
          height: 300,

        ),
      )


  ),
  InteractiveViewer(
      minScale: .1,
      maxScale: 100.2,
      boundaryMargin: EdgeInsets.all(100),


      child: Center(
        child:Image.network(
          image2,
          width: 150,
          height: 150,

        ),
      )


  ),
  InteractiveViewer(
      minScale: .1,
      maxScale: 100.2,
      boundaryMargin: EdgeInsets.all(100),


      child: Center(
        child:Image.network(
          image3,
          width: 150,
          height: 150,

        ),
      )


  ),
  InteractiveViewer(
      minScale: .1,
      maxScale: 100.2,
      boundaryMargin: EdgeInsets.all(100),


      child: Center(
        child:Image.network(
          image4,
          width: 100,
          height: 150,

        ),
      )


  ),
];