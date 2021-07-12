import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
bool first =false;
void delete(){
  first = false;

}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
             Container(
              width: double.infinity,
              height: 400,
        child:
        Stack(
          children: [
            InteractiveViewer(
              minScale: .1,
              maxScale: 100.2,
              boundaryMargin: EdgeInsets.all(100),


              child: Center(
                child:Image.network(
                  "http://asascity.com/wp-content/uploads/2020/10/kisspng-couch-mid-century-modern-table-sofa-bed-furniture-a-sofa-5a7d4a01c667b5.2114360815181603858127.png",
                  width: 50,
                  height: 100,

                ),
              )


          ),
            if(first)
            GestureDetector(
              onLongPress: (){
                setState(() {
                  first = false;
                });

              },
              child: InteractiveViewer(
                minScale: .1,
                maxScale: 100.2,
                  boundaryMargin: EdgeInsets.all(100),


                child: Center(
                  child:Image.network(
                    "http://asascity.com/wp-content/uploads/2020/10/kisspng-couch-mid-century-modern-table-sofa-bed-furniture-a-sofa-5a7d4a01c667b5.2114360815181603858127.png",
                    width: 50,
                    height: 100,

                  ),
                )


          ),
            ),



          ],
        ),


        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),

            color: Colors.blueGrey,



            ),),

          Expanded(child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemBuilder: (context,index)=>Container(
                padding: EdgeInsets.all(8),
                width: 20, height: 20,
                color: Colors.lightGreen[300],
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
                                'http://asascity.com/wp-content/uploads/2020/10/kisspng-couch-mid-century-modern-table-sofa-bed-furniture-a-sofa-5a7d4a01c667b5.2114360815181603858127.png'),
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
                              first=!first;
                            });
                          },
                          icon:Icon(Icons.add)),
                      backgroundColor: Colors.blue,
                    )
                  ],
                ),

              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing : 10,
                  childAspectRatio: 3/2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 230
              ),
              itemCount: 4,
            ),
          ) )

        ],
      ),
    );
  }
}
