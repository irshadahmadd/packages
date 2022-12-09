import 'package:flutter/material.dart';
class CreateID extends StatefulWidget {
  const CreateID({Key? key}) : super(key: key);

  @override
  State<CreateID> createState() => _CreateIDState();
}

class _CreateIDState extends State<CreateID> {
  TextEditingController search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 15),
          color: Colors.black,
          child: Column(
            children: [
              //search bar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: TextFormField(
                        controller: search,
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              //Frist
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 80,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Go Exchange 247",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang 247",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 6,),
                          Container(
                            color: Colors.white70,
                            height: 2,
                            width: 150,
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(Icons.stacked_line_chart_rounded,color: Colors.yellow,size: 15,),
                              Text("Initial Account Creation",style: TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          ),

                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 26,left: 100),
                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  backgroundColor: Color(0xff1a1a1a),
                                  title: Container(
                                      height: 100,
                                      width: 380,


                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text("DEMO ID",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Icon(Icons.share,color: Colors.white,size: 30,),
                                              ],

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            color: Colors.white,
                                            width: 280,
                                            height: 2,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Demo ID",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("Demo Passward",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                ],
                                              ),
                                              SizedBox(width: 150,),
                                              Column(
                                                children: [
                                                  Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                                                  Icon(Icons.lock,color: Colors.white,),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                );
                              });
                            },


                              icon:Icon(Icons.expand_circle_down,color: Colors.white,), )


                            // Icon(Icons.expand_circle_down,color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              //Second
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 80,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Go Exchange 247",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang 247",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 6,),
                          Container(
                            color: Colors.white70,
                            height: 2,
                            width: 150,
                          ),
                          SizedBox(height: 6,),

                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                              Text("Spacial Plan",style: TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                      // CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.yellow,),
                      // CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.orange,),
                      // CircleAvatar(child: Icon(Icons.more_vert,color: Colors.white,size: 40,),backgroundColor: Colors.grey,),
                      Container(
                        padding: EdgeInsets.only(top: 26,left: 100),
                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  backgroundColor: Color(0xff1a1a1a),
                                  title: Container(
                                      height: 124,
                                      width: 380,


                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text("Min Bal",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Icon(Icons.balance,color: Colors.white,size: 30,),
                                              ],

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            color: Colors.white,
                                            width: 280,
                                            height: 2,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("GAME1",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME2",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME3",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME4",style: TextStyle(color: Colors.white,fontSize: 15),),

                                                ],
                                              ),
                                              SizedBox(width: 150,),
                                              Column(
                                                children: [
                                                  Text("1000",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("0910",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1011",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1201",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                );
                              });
                            },


                              icon:Icon(Icons.expand_circle_down,color: Colors.white,), )


                            // Icon(Icons.expand_circle_down,color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              //Frist
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 80,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Let Us Exchange 247",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang 247",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 6,),
                          Container(
                            color: Colors.white70,
                            height: 2,
                            width: 150,
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(Icons.stacked_line_chart_rounded,color: Colors.yellow,size: 15,),
                              Text("Initial Account Creation",style: TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                      // CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.yellow,),
                      // CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.orange,),
                      // CircleAvatar(child: Icon(Icons.more_vert,color: Colors.white,size: 40,),backgroundColor: Colors.grey,),
                      Container(
                        padding: EdgeInsets.only(top: 26,left: 100),
                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  backgroundColor: Color(0xff1a1a1a),
                                  title: Container(
                                      height: 124,
                                      width: 380,


                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text("Min Bal",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Icon(Icons.balance,color: Colors.white,size: 30,),
                                              ],

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            color: Colors.white,
                                            width: 280,
                                            height: 2,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("GAME1",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME2",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME3",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME4",style: TextStyle(color: Colors.white,fontSize: 15),),

                                                ],
                                              ),
                                              SizedBox(width: 150,),
                                              Column(
                                                children: [
                                                  Text("1000",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("0910",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1011",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1201",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                );
                              });
                            },


                              icon:Icon(Icons.expand_circle_down,color: Colors.white,), )


                            // Icon(Icons.expand_circle_down,color: Colors.white,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              //Second
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 80,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Go Exchange 247",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang 247",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 6,),
                          Container(
                            color: Colors.white70,
                            height: 2,
                            width: 150,
                          ),
                          SizedBox(height: 6,),

                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                              Text("Spacial Plan",style: TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                      // CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.yellow,),
                      // CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.orange,),
                      // CircleAvatar(child: Icon(Icons.more_vert,color: Colors.white,size: 40,),backgroundColor: Colors.grey,),
                      Container(
                        padding: EdgeInsets.only(top: 26,left: 100),
                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  backgroundColor: Color(0xff1a1a1a),
                                  title: Container(
                                      height: 100,
                                      width: 380,


                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text("DEMO ID",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Icon(Icons.share,color: Colors.white,size: 30,),
                                              ],

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            color: Colors.white,
                                            width: 280,
                                            height: 2,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Demo ID",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("Demo Passward",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                ],
                                              ),
                                              SizedBox(width: 150,),
                                              Column(
                                                children: [
                                                  Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                                                  Icon(Icons.lock,color: Colors.white,),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                );
                              });
                            },


                              icon:Icon(Icons.expand_circle_down,color: Colors.white,), )


                            // Icon(Icons.expand_circle_down,color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              //Frist
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 80,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Let Us Exchange 247",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang 247",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 6,),
                          Container(
                            color: Colors.white70,
                            height: 2,
                            width: 150,
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(Icons.stacked_line_chart_rounded,color: Colors.yellow,size: 15,),
                              Text("Initial Account Creation",style: TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                      // CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.yellow,),
                      // CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.orange,),
                      // CircleAvatar(child: Icon(Icons.more_vert,color: Colors.white,size: 40,),backgroundColor: Colors.grey,),
                      Container(
                        padding: EdgeInsets.only(top: 26,left: 100),
                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  backgroundColor: Color(0xff1a1a1a),
                                  title: Container(
                                      height: 124,
                                      width: 380,


                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text("Min Bal",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Icon(Icons.balance,color: Colors.white,size: 30,),
                                              ],

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            color: Colors.white,
                                            width: 280,
                                            height: 2,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("GAME1",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME2",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME3",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("GAME4",style: TextStyle(color: Colors.white,fontSize: 15),),

                                                ],
                                              ),
                                              SizedBox(width: 150,),
                                              Column(
                                                children: [
                                                  Text("1000",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("0910",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1011",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                  Text("1201",style: TextStyle(color: Colors.white,fontSize: 15),),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                );
                              });
                            },


                              icon:Icon(Icons.expand_circle_down,color: Colors.white,), )


                            // Icon(Icons.expand_circle_down,color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

