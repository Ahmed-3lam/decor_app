import 'package:decor_app/List.dart';
import 'package:flutter/material.dart';

import 'Draggable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

bool first = false;
bool second = false;
bool third = false;
bool fourth = false;
String image1 =
    "http://asascity.com/wp-content/uploads/2020/10/kisspng-couch-mid-century-modern-table-sofa-bed-furniture-a-sofa-5a7d4a01c667b5.2114360815181603858127.png";
String image2 = "https://pngimg.com/uploads/sofa/sofa_PNG6934.png";
String image3 = "https://cdn.picpng.com/sofa/sofa-illustration-35093.png";
String image4 =
    "https://freepngimg.com/thumb/sofa/22647-2-sofa-transparent-image-thumb.png";

void delete1() {
  first = false;
}

void delete2() {
  second = false;
}

void delete3() {
  third = false;
}

void delete4() {
  fourth = false;
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    void backward1() {
      var temp = mainItems[3];
      // var image = image4;
      setState(() {
        // image4=image1;
        mainItems[3] = mainItems[0];
        mainItems[0] = temp;
        // image1=image;
      });
    }

    void backward2() {
      var temp = mainItems[2];
      // var image = image3;
      setState(() {
        // image3=image2;
        mainItems[2] = mainItems[1];
        mainItems[1] = temp;
        // image2=image;
      });
    }

    void forward1() {
      var temp = mainItems[0];
      // var image = image1;
      setState(() {
        // image1=image4;
        mainItems[0] = mainItems[3];
        mainItems[3] = temp;
        // image4=image;
      });
    }

    void forward2() {
      var temp = mainItems[1];
      // var image = image2;
      setState(() {
        // image2=image3;
        mainItems[1] = mainItems[2];
        mainItems[2] = temp;
        // image3=image;
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: DraggableItem1(),
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
                Row(
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
                                    setState(() {
                                      first = true;
                                    });
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
                                  setState(() {
                                    second = true;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            backgroundColor: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
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
                                  image: NetworkImage(image3),
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
                                  setState(() {
                                    third = true;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            backgroundColor: Colors.blue,
                          )
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
                                  image: NetworkImage(image4),
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
                                  setState(() {
                                    fourth = true;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            backgroundColor: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
