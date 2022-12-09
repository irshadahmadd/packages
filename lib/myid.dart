import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:google_fonts/google_fonts.dart';
class MYIDs extends StatefulWidget {
  const MYIDs({Key? key}) : super(key: key);

  @override
  State<MYIDs> createState() => _MYIDsState();
}

class _MYIDsState extends State<MYIDs> {
  TextEditingController search=TextEditingController();
  String url="https://pub.dev/packages/url_launcher/install";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.black,
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              //Search bar
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
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),






                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              //2
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 80,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 10,),

                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                          {
                            // ignore: deprecated_member_use
                            await launch(url);
                          }
                      },
                      child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),

                      SizedBox(width: 10,),

                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),





                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //3
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //4
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //5
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),

                    ],
                  ),
                ),
              ),
              //6
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),

                    ],
                  ),
                ),
              ),
              //7
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xff1a1a1a),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 15),
                        child:Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Geoat9.com",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 6,),
                          Text("Go exchang",style: TextStyle(color: Colors.white,fontSize: 10),),

                        ],
                      ),
                      SizedBox(width: 70,),
                      CircleAvatar(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.yellow,radius: 20,),
                      SizedBox(width: 15,),
                      GestureDetector(onTap: () async{
                        final url="https://pub.dev/packages/url_launcher/install";
                        // ignore: deprecated_member_use
                        if(await canLaunch(url))
                        {
                          // ignore: deprecated_member_use
                          await launch(url);
                        }
                      },
                        child:CircleAvatar(child: Text("w",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.orange,radius: 20,) ,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        child: PopupMenuButton(itemBuilder: (context)=>

                        [
                          PopupMenuItem(child: Container(

                            height: 300,
                            width: 142,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Deposit",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 6,),
                                Text("Transaction",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 6,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Details",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Veiw Transaction",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                Text("Change Plan",style: TextStyle(color: Colors.black,fontSize: 20,),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                                Text("Change Passward",style: TextStyle(color: Colors.black,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),


                          ),

                        ]
                        ),
                        backgroundColor: Colors.white,radius: 20,
                      ),

                    ],
                  ),
                ),
              ),
              // Container(
              //   child: ElevatedButton(
              //     onPressed: () async{
              //       final url=('https://pub.dev/packages/url_launcher/install');
              //       // ignore: deprecated_member_use
              //       if(await canLaunch(url))
              //         {
              //           // ignore: deprecated_member_use
              //           await launch(url);
              //         }
              //
              //     },
              //     child: Icon(Icons.account_balance_wallet_outlined),
              //   ),
              // )


            ],
          ),
        ),
      ),
    );
  }
}
//URL LAUNCHER


