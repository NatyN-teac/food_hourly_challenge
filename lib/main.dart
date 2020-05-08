import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hourly Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: FoodHomePage(),
    );
  }
}

class FoodHomePage extends StatefulWidget {
  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: height,
              width: width,
              color: Colors.white,
            ),
            Positioned(
              top: -height / 5,
              left: -130,
              child: Container(
                  height: height / 1.3,
                  width: width / 1.1,
                  child: CircleAvatar(
                    radius: 200,
                    foregroundColor: Colors.grey,
                    backgroundColor: Colors.blueGrey.withOpacity(0.06),
                  )),
            ),
            Positioned(
              top: 45.0,
              left: 20.0,
              right: 10,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              child: Image.asset(
                                "images/profile.jpg",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(right: 1),
                                    alignment: Alignment.centerRight,
                                    height: 2.5,
                                    width: 25,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 1),
                                    alignment: Alignment.centerRight,
                                    height: 2.5,
                                    width: 10,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20.0, left: 2),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Food",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 0.0, left: 2),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.57)),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,right: 10),
                            child: Icon(Icons.search,size: 40,color: Colors.black54,),
                          ),

                          Container(
                            width: width/1.3,
                            child: TextField(

                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                fillColor: Colors.black54.withOpacity(0.2),
                                labelStyle: TextStyle(color: Colors.black54.withOpacity(0.2),fontWeight: FontWeight.w500,fontSize: 20),
                                labelText: "Search...",
                                contentPadding: const EdgeInsets.only(left: 2)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0,),

                    Container(
                      padding: const EdgeInsets.only(left: 2.0,top: 20.0,bottom: 10.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Categories",style:
                      TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black.withOpacity(0.60))
                        ,),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: height/3.8,


                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                          child: Container(
                            width: width/3,
                            decoration: BoxDecoration(
                                color: Color(0xffffc107),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.22),
                                      blurRadius: 2,
                                      spreadRadius: 3
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                Image.asset("images/pizza.png",width: 70,height: 70,),
                                SizedBox(height: 20.0,),
                                Container(
                                  child: Text("Pizza",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black54),),
                                ),
                                SizedBox(height: 25.0,),
                                Center(
                                    child: ClipOval(
                                      child: Container(
                                        color: Colors.white,
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.navigate_next,size: 25,color: Colors.black,),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  height: 30.0,
                                )

                              ],
                            ),
                          ),
                        ),
                          SizedBox(width: 15.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                          child: Container(
                            width: width/3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.22),
                                      blurRadius: 2,
                                      spreadRadius: 3
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                Image.asset("images/burger.png",width: 70,height: 70,),
                                SizedBox(height: 20.0,),
                                Container(
                                  child: Text("Burger",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black54),),
                                ),
                                SizedBox(height: 25.0,),
                                Center(
                                    child: ClipOval(
                                      child: Container(
                                        color: Color(0xffff6f00),
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.navigate_next,size: 25,color: Colors.white,),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  height: 30.0,
                                )

                              ],
                            ),
                          ),
                        ),
                          SizedBox(width: 15.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                          child: Container(
                            width: width/3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.22),
                                      blurRadius: 2,
                                      spreadRadius: 3
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                Image.asset("images/seafood.jpg",width: 70,height: 70,),
                                SizedBox(height: 20.0,),
                                Container(
                                  child: Text("Seafood",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black54),),
                                ),
                                SizedBox(height: 25.0,),
                                Center(
                                    child: ClipOval(
                                      child: Container(
                                        color: Color(0xffff6f00),
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.navigate_next,size: 25,color: Colors.white,),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  height: 30.0,
                                )

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                          child: Container(
                            width: width/3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.22),
                                      blurRadius: 2,
                                      spreadRadius: 3
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                Image.asset("images/coke.jpg",width: 70,height: 70,),
                                SizedBox(height: 20.0,),
                                Container(
                                  child: Text("Soft Drinks",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black54),),
                                ),
                                SizedBox(height: 25.0,),
                                Center(
                                    child: ClipOval(
                                      child: Container(
                                        color: Color(0xffff6f00),
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.navigate_next,size: 25,color: Colors.white,),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  height: 30.0,
                                )

                              ],
                            ),
                          ),
                        ),
                        ],

                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Container(

                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Text("Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black.withOpacity(0.80)),),
                    ),
                    Container(


                      width: width/1.1,
                      height: height,

                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Container(
                            child: Stack(

                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0,right: 20,top: 10,bottom: 5),
                                  child: Container(


                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 1,
                                          color: Colors.grey.withOpacity(0.5)
                                        ),

                                      ]
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0,left:10.0,bottom: 20.0),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 20,),
                                              Icon(Icons.local_pizza,color: Color(0xffffc107),size: 16,),
                                              Text("top of the week",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),)
                                            ],
                                          ),

                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left:30.0,bottom: 2.0),
                                          alignment: Alignment.centerLeft,
                                          child: Text("Primavera Pizza",style: TextStyle(fontSize: 25,
                                              fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),

                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left:30.0,bottom: 20.0),
                                          alignment: Alignment.centerLeft,
                                          child: Text("Weight 540 gr",style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.3)),),

                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height:50,

                                              decoration: BoxDecoration(
                                                  color: Color(0xffffc107),
                                                  borderRadius: BorderRadius.only(
                                                      topRight:Radius.circular(20.0),
                                                    bottomLeft: Radius.circular(20.0)




                                                  )
                                              ),
                                              width: 100,
                                              child: Center(
                                                child: Icon(Icons.add,color: Colors.black,size: 15,),
                                              ),
                                            ),
                                            SizedBox(width: 30,),
                                            Icon(Icons.star,size: 15,color: Colors.black,),
                                            Text("5.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: -10,
                                  child: Container(
                                    child: Image.asset("images/piz.png",width: 150,height: 150,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Stack(

                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0,right: 20,top: 10,bottom: 5),
                                  child: Container(


                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 1,
                                              color: Colors.grey.withOpacity(0.5)
                                          ),

                                        ]
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0,left:10.0,bottom: 20.0),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 20,),
                                              Icon(Icons.local_pizza,color: Color(0xffffc107),size: 16,),
                                              Text("top of the week",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),)
                                            ],
                                          ),

                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left:30.0,bottom: 2.0),
                                          alignment: Alignment.centerLeft,
                                          child: Text("Primavera Pizza",style: TextStyle(fontSize: 25,
                                              fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),

                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left:30.0,bottom: 20.0),
                                          alignment: Alignment.centerLeft,
                                          child: Text("Weight 540 gr",style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.3)),),

                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height:50,

                                              decoration: BoxDecoration(
                                                  color: Color(0xffffc107),
                                                  borderRadius: BorderRadius.only(
                                                      topRight:Radius.circular(20.0),
                                                      bottomLeft: Radius.circular(20.0)




                                                  )
                                              ),
                                              width: 100,
                                              child: Center(
                                                child: Icon(Icons.add,color: Colors.black,size: 15,),
                                              ),
                                            ),
                                            SizedBox(width: 30,),
                                            Icon(Icons.star,size: 15,color: Colors.black,),
                                            Text("5.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: -10,
                                  child: Container(
                                    child: Image.asset("images/piz.png",width: 150,height: 150,),
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    )



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
