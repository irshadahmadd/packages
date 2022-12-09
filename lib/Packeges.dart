              import 'dart:io';
              import 'package:file_picker/file_picker.dart';
              import 'package:flutter/material.dart';
              import 'package:flutter_packeges/videoplayer.dart';
              import 'package:flutter_svg/flutter_svg.dart';
              import 'package:google_fonts/google_fonts.dart';
              import 'package:image_picker/image_picker.dart';
              import 'package:country_code_picker/country_code_picker.dart';
              import 'package:url_launcher/url_launcher.dart';
              import 'package:font_awesome_flutter/font_awesome_flutter.dart';
              import 'package:carousel_slider/carousel_slider.dart';
              import 'package:fluttertoast/fluttertoast.dart';
              // import 'package:data_table_2/data_table_2.dart';

              class Packge extends StatefulWidget {
                const Packge({Key? key}) : super(key: key);

                @override
                State<Packge> createState() => _PackgeState();
              }

              TextEditingController name = TextEditingController();
              TextEditingController location = TextEditingController();
              TextEditingController mobalt = TextEditingController();
              TextEditingController email = TextEditingController();
              TextEditingController password = TextEditingController();
              bool Checkboxvalue = false;
              bool Checkboxvalu = true;
              String? selectedDropdown;
              String? selectedDropdownExpansiontile;
              String? SelectedMonth;
              String? SelectedYear;
              List RadioValues = ["value1", "value2", "value3"];
              String? SelectValue = "value1";

              class _PackgeState extends State<Packge> {
                File? _image;

                Future getimage(ImageSource source) async {
                  final image = await ImagePicker.platform.getImage(source: source);
                  if (image == null) return;
                  final imageTemporary = File(image.path);
                  setState(() {
                    _image = imageTemporary;
                    Navigator.pop(context);
                  });
                }

                File? file;

                @override
                Widget build(BuildContext context) {
                  return Scaffold(
                    backgroundColor: Colors.greenAccent,
                    appBar: AppBar(
                      title: Text("Advance farms"),
                      actions: [
                        IconButton(
                          onPressed: () {
                            //Dialog Box
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    title: Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        height: 400,
                                        width: 300,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Hello Irshad",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 30),
                                              ),
                                            ),
                                            Container(
                                              child: Text("Email Format Let us look at these "
                                                  "important steps to follow to get the format of a "
                                                  "formal email right how is going your stuties  1. "
                                                  "important steps to follow to get the format of a "
                                                  "formal email right how is going your stuties  1. "
                                                  "important steps to follow to get the format of a "
                                                  "formal email right how is going your stuties  1. "
                                                  "Subject line"),
                                            )
                                          ],
                                        )),
                                  );
                                });
                          },
                          icon: Icon(Icons.email),
                        )
                      ],
                    ),
                    body: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PopupMenuButton(
                                      itemBuilder: (context) => [
                                            PopupMenuItem(child: Text("Item1")),
                                            PopupMenuItem(child: Text("Item2")),
                                            PopupMenuItem(child: Text("Item3")),
                                            PopupMenuItem(child: Text("Item4")),
                                          ]),
                                  Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            //UPLOAD PICTURE

                            // GestureDetector(
                            //   onTap: () => getimage(ImageSource.gallery),
                            //    // file=await ImagePicker.platform.getImage(source: ImageSource.gallery);
                            //
                            //
                            //   child: Container(
                            //
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         CircleAvatar(backgroundColor:Colors.red,radius:42,child: CircleAvatar(backgroundColor:Colors.grey,radius: 40,child: CircleAvatar(backgroundColor:Colors.white,child: Icon(Icons.add,color: Colors.black,size: 30,)))),
                            //       ],
                            //     ),
                            //   ),
                            //
                            // ),

                            Center(
                              child: PopupMenuButton(
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      child: TextButton(
                                        onPressed: () => getimage(ImageSource.gallery),
                                        child: Text("Gallery"),
                                      ),
                                    ),
                                    PopupMenuItem(
                                      child: TextButton(
                                        onPressed: () => getimage(ImageSource.camera),
                                        child: Text("Camera"),
                                      ),
                                    ),
                                    PopupMenuItem(
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            _image = null;
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Text("Remove"),
                                      ),
                                    ),
                                  ];
                                },
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 40),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(80),
                                          child: _image != null
                                              ? Image.file(
                                                  _image!,
                                                  height: 100,
                                                  width: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              : Icon(
                                                  Icons.person,
                                                  size: 40,
                                                ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        // top: 65,
                                        child: Container(
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),
                            //Name
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: 370,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // gradient:LinearGradient(
                                //     begin: Alignment.center,
                                //     colors: [
                                //       Colors.white,
                                //       Colors.grey,
                                //
                                //     ]
                                // )
                              ),
                              child: TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: ("Name"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            //Email
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: 370,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,

                                borderRadius: BorderRadius.circular(10),
                                // gradient:LinearGradient(
                                //     begin: Alignment.center,
                                //     colors: [
                                //       Colors.white,
                                //       Colors.grey,
                                //
                                //     ]
                                // )
                              ),
                              child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: ("Email"),
                                ),
                              ),
                            ),
                            //Mobile
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
                                      child: DropdownButton(
                                        value: selectedDropdown,
                                        items: [
                                          DropdownMenuItem(
                                              value: "1", child: Text("Peshawar")),
                                          DropdownMenuItem(value: "2", child: Text("Multan")),
                                          DropdownMenuItem(value: "3", child: Text("Lahore")),
                                          DropdownMenuItem(
                                              value: "4", child: Text("Karachi")),
                                        ],
                                        onChanged: (valu) {
                                          setState(() {
                                            selectedDropdown = valu as String;
                                          });
                                        },
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      width: 110,
                                      height: 50,
                                      margin: EdgeInsets.only(top: 15),
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    padding: EdgeInsets.only(left: 20),
                                    width: 260,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: TextFormField(
                                      controller: location,
                                      decoration: InputDecoration(
                                        hintText: "City",
                                        hintStyle: TextStyle(color: Colors.black),
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            //Mobile
                            Container(
                              padding: EdgeInsets.only(left: 0),
                              width: 370,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // gradient:LinearGradient(
                                //     begin: Alignment.center,
                                //     start:Alignment.lef,
                                //     colors: [
                                //       Colors.white,
                                //       Colors.grey,
                                //
                                //     ]
                                // )
                              ),
                              child: TextFormField(
                                controller: mobalt,
                                decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                    showCountryOnly: false,
                                    initialSelection: 'Pakistan',
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: ("Phone"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //ExpansionTile
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: ExpansionTile(
                                title: Text("DOB"),
                                children: [
                                  Container(
                                    width: 400,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.data_thresholding,
                                              color: Colors.black,
                                              size: 40,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              "Enter Your Date Of Birth",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "DAY",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 20),
                                              ),
                                              SizedBox(
                                                width: 65,
                                              ),
                                              Text(
                                                "MONTH",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 20),
                                              ),
                                              SizedBox(
                                                width: 65,
                                              ),
                                              Text(
                                                "YEAR",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              //DOB DAY
                                              Container(
                                                padding: EdgeInsets.only(left: 10),
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: DropdownButton(
                                                  value: selectedDropdownExpansiontile,
                                                  items: [
                                                    DropdownMenuItem(
                                                        value: "1", child: Text("1")),
                                                    DropdownMenuItem(
                                                        value: "2", child: Text("2")),
                                                    DropdownMenuItem(
                                                        value: "3", child: Text("3")),
                                                    DropdownMenuItem(
                                                        value: "4", child: Text("4")),
                                                    DropdownMenuItem(
                                                        value: "5", child: Text("5")),
                                                    DropdownMenuItem(
                                                        value: "6", child: Text("6")),
                                                    DropdownMenuItem(
                                                        value: "7", child: Text("7")),
                                                    DropdownMenuItem(
                                                        value: "8", child: Text("8")),
                                                    DropdownMenuItem(
                                                        value: "9", child: Text("9")),
                                                    DropdownMenuItem(
                                                        value: "10", child: Text("10")),
                                                    DropdownMenuItem(
                                                        value: "11", child: Text("11")),
                                                    DropdownMenuItem(
                                                        value: "12", child: Text("12")),
                                                    DropdownMenuItem(
                                                        value: "13", child: Text("13")),
                                                    DropdownMenuItem(
                                                        value: "14", child: Text("14")),
                                                    DropdownMenuItem(
                                                        value: "15", child: Text("15")),
                                                    DropdownMenuItem(
                                                        value: "16", child: Text("16")),
                                                    DropdownMenuItem(
                                                        value: "17", child: Text("17")),
                                                    DropdownMenuItem(
                                                        value: "18", child: Text("18")),
                                                    DropdownMenuItem(
                                                        value: "19", child: Text("19")),
                                                  ],
                                                  onChanged: (val) {
                                                    setState(() {
                                                      selectedDropdownExpansiontile =
                                                          val as String;
                                                    });
                                                  },
                                                ),
                                              ),
                                              //DOB MONTH
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(left: 10),
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: DropdownButton(
                                                  value: SelectedMonth,
                                                  items: [
                                                    DropdownMenuItem(
                                                        value: "1", child: Text("JAN")),
                                                    DropdownMenuItem(
                                                        value: "2", child: Text("FEB")),
                                                    DropdownMenuItem(
                                                        value: "3", child: Text("MARCH")),
                                                    DropdownMenuItem(
                                                        value: "4", child: Text("AFRIL")),
                                                    DropdownMenuItem(
                                                        value: "5", child: Text("MAY")),
                                                    DropdownMenuItem(
                                                        value: "6", child: Text("JUNE")),
                                                    DropdownMenuItem(
                                                        value: "7", child: Text("JULY")),
                                                    DropdownMenuItem(
                                                        value: "8", child: Text("AUGUST")),
                                                    DropdownMenuItem(
                                                        value: "9", child: Text("SEPTEMNER")),
                                                    DropdownMenuItem(
                                                        value: "10", child: Text("OCTUBER")),
                                                    DropdownMenuItem(
                                                        value: "11", child: Text("NOVEMBER")),
                                                    DropdownMenuItem(
                                                        value: "12", child: Text("DECEMBER")),
                                                  ],
                                                  onChanged: (val) {
                                                    setState(() {
                                                      SelectedMonth = val as String;
                                                    });
                                                  },
                                                ),
                                              ),
                                              //DOB YEAR
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(left: 10),
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: DropdownButton(
                                                  value: selectedDropdownExpansiontile,
                                                  items: [
                                                    DropdownMenuItem(
                                                        value: "1", child: Text("1999")),
                                                    DropdownMenuItem(
                                                        value: "2", child: Text("2000")),
                                                    DropdownMenuItem(
                                                        value: "3", child: Text("2001")),
                                                    DropdownMenuItem(
                                                        value: "4", child: Text("2002")),
                                                    DropdownMenuItem(
                                                        value: "5", child: Text("2003")),
                                                    DropdownMenuItem(
                                                        value: "6", child: Text("2004")),
                                                    DropdownMenuItem(
                                                        value: "7", child: Text("2005")),
                                                    DropdownMenuItem(
                                                        value: "8", child: Text("2006")),
                                                    DropdownMenuItem(
                                                        value: "9", child: Text("2007")),
                                                    DropdownMenuItem(
                                                        value: "10", child: Text("2008")),
                                                    DropdownMenuItem(
                                                        value: "11", child: Text("2009")),
                                                    DropdownMenuItem(
                                                        value: "12", child: Text("2010")),
                                                    DropdownMenuItem(
                                                        value: "13", child: Text("2011")),
                                                    DropdownMenuItem(
                                                        value: "14", child: Text("2012")),
                                                    DropdownMenuItem(
                                                        value: "15", child: Text("2013")),
                                                    DropdownMenuItem(
                                                        value: "16", child: Text("2014")),
                                                    DropdownMenuItem(
                                                        value: "17", child: Text("2015")),
                                                    DropdownMenuItem(
                                                        value: "18", child: Text("2016")),
                                                    DropdownMenuItem(
                                                        value: "19", child: Text("2017")),
                                                  ],
                                                  onChanged: (val) {
                                                    setState(() {
                                                      selectedDropdownExpansiontile =
                                                          val as String;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Select Gender",
                                      style: TextStyle(color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Male",
                                        style: TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "Transgender",
                                        style: TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Radio<String>(
                                            value: RadioValues[0],
                                            groupValue: SelectValue,
                                            onChanged: (vaL) {
                                              setState(() {
                                                SelectValue = vaL as String?;
                                              });
                                            }),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        Radio<String>(
                                            value: RadioValues[1],
                                            groupValue: SelectValue,
                                            onChanged: (vaL) {
                                              setState(() {
                                                SelectValue = vaL as String?;
                                              });
                                            }),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        Radio<String>(
                                            value: RadioValues[2],
                                            groupValue: SelectValue,
                                            onChanged: (vaL) {
                                              setState(() {
                                                SelectValue = vaL as String?;
                                              });
                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Are You Student",
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        value: Checkboxvalue,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Checkboxvalue = value!;
                                          });
                                        },
                                      ),
                                      Checkbox(
                                        value: Checkboxvalu,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Checkboxvalu = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "YES",
                                        style: TextStyle(color: Colors.black, fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "NO",
                                        style: TextStyle(color: Colors.black, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Contact Us",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Mail Us On",
                                        style: TextStyle(color: Colors.black87, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      ElevatedButton(
                                          onPressed: () async {
                                            final url = Uri(scheme: 'mailto');
                                            // ignore: deprecated_member_use
                                            if (await canLaunchUrl(url)) {
                                              // ignore: deprecated_member_use
                                              await launchUrl(
                                                url,
                                              );
                                            }
                                          },
                                          child: Icon(
                                            Icons.email,
                                            color: Colors.black54,
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Call Us On",
                                        style: TextStyle(color: Colors.black87, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      ElevatedButton(
                                          onPressed: () async {
                                            final url = Uri(scheme: 'tel');
                                            if (!await canLaunchUrl(url)) ;
                                            {
                                              await launchUrl(url);
                                            }
                                          },
                                          child: Icon(
                                            Icons.phone_callback_rounded,
                                            color: Colors.green,
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Message",
                                        style: TextStyle(color: Colors.black87, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      ElevatedButton(
                                          onPressed: () async {
                                            final url = Uri(scheme: 'sms');
                                            if (!await canLaunchUrl(url)) ;
                                            {
                                              await launchUrl(url);
                                            }
                                          },
                                          child: Icon(
                                            Icons.sms_failed,
                                            color: Colors.black45,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " Upload file",
                                  style: TextStyle(color: Colors.black87, fontSize: 20),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () async {
                                      FilePickerResult? result = await FilePicker.platform
                                          .pickFiles(type: FileType.any);
                                      if (result != null) {
                                        file = File(result.files.first.path!);
                                        setState(() {});
                                      } else {}
                                    },
                                    child: file == null
                                        ? Icon(
                                            Icons.upload,
                                            color: Colors.black,
                                          )
                                        : Image.file(File(file!.path))),
                              ],
                            ),
                            //google fonts and font awesome icon
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Google Fonts",
                                    style: GoogleFonts.lato(),
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.newspaper,
                                  ),
                                  Text("Flutter SVG Image"),
                                  Container(
                                    child: SvgPicture.asset("images/irshad.svg"),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.8),
                                      spreadRadius: 5,
                                      blurRadius: 8,
                                    ),
                                  ]),
                              child: CarouselSlider(
                                  items: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("How is it"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 60,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset("images/irshad12.jpg"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: SvgPicture.asset("images/irshad.svg"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                        "images/irsha.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "How is my slider",
                                        style: GoogleFonts.lobsterTwo(
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                  ],
                                  options: CarouselOptions(
                                    autoPlay: true,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                              elevation: 8,
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: "This is Center Short Toast",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              },
                              child: Text(
                                "Toast",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: DataTable(
                                      dataRowHeight: 70,
                                      headingRowHeight: 60,
                                      sortColumnIndex: 1,
                                      sortAscending: true,
                                      columns: [
                                        DataColumn(
                                          label: Text("Irshad"),
                                          numeric: false,
                                          tooltip: 'this is it',
                                        ),
                                        DataColumn(label: Text("Sanan")),
                                        DataColumn(label: Text("Safwan")),
                                      ],
                                      rows: [
                                        DataRow(cells: [
                                          DataCell(Text("230")),
                                          DataCell(Text("300")),
                                          DataCell(Text("400")),
                                        ]),
                                        DataRow(cells: [
                                          DataCell(Text("450")),
                                          DataCell(Text("90")),
                                          DataCell(Text("909")),
                                        ]),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => vdlist()));
                                },
                                icon: Icon(Icons.video_collection)),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
