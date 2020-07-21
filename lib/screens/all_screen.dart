import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisata_purwokerto/models/show_all_model.dart';

class AllScreen extends StatefulWidget {
  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  // final _allController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 20, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.8, left: 28.8),
                child: Text(
                  'Explore\nPurwokerto',
                  style: GoogleFonts.quicksand(
                      fontSize: 45.6, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 400,
                margin: EdgeInsets.only(top: 16.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 15.0,
                    );
                  },
                  itemCount: showAll.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 28.8, right: 28.8),
                      width: 333.6,
                      height: 80.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(showAll[index].image),
                          )),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 19.2,
                            left: 19.2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.8),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 19.2, sigmaY: 19.2),
                                child: Container(
                                  height: 36.0,
                                  padding:
                                      EdgeInsets.only(left: 16.72, right: 14.4),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 9.52),
                                      Text(
                                        showAll[index].name,
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
