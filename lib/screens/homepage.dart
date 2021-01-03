import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.name}) : super(key: key);

  String name;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState({Key key, this.name = "world"});

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff97e6FF),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  // color: Color(0xffFFFFF),
                  width: 390,
                  height: 800,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 83),
                      borderRadius: BorderRadius.circular(22)))),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 15, 15),
                    child: Text(
                      "Weather API",
                      style: GoogleFonts.sansita(
                          textStyle: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 37)),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(35, 1 ,1 ,1),
                    child: Text(
                      "Hello, $name",
                      style: GoogleFonts.roboto(textStyle: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.normal,
                       color: Colors.amber,
                       decoration: TextDecoration.none
                      )),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 15, 15),
                    child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.45),
                                  spreadRadius: 0.25,
                                  blurRadius: 8,
                                  offset: Offset(3, 3))
                            ]),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Current Weather",
                                      style: GoogleFonts.spectralSc(
                                          textStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.normal))),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(9),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width: 81,
                                        height: 81,
                                        color: Colors.amber),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Column(
                                      children: [
                                        Text("Wednesday, 20 Aug",
                                            style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontWeight:
                                                        FontWeight.normal))),
                                        Text("56 °F",
                                            style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                    fontSize: 46,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontWeight:
                                                        FontWeight.normal))),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(10))
                              ],
                            ))))
              ],
            ),
            width: 390,
            height: 800,
            // color: Colors.amber
          )
        ],
      ),
    );
  }
}
