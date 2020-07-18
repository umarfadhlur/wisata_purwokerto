import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisata_purwokerto/models/popular_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

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
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Icon(Icons.search),
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
              Padding(
                padding: EdgeInsets.only(top: 48.0, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Destination',
                      style: GoogleFonts.quicksand(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    FlatButton(
                      child: Text(
                        'Show All >',
                        style: GoogleFonts.quicksand(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16.0),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      popular.length,
                      (int index) => Container(
                            margin: EdgeInsets.only(right: 28.8),
                            width: 333.6,
                            height: 218.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.6),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(popular[index].image),
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
                                              sigmaY: 19.2, sigmaX: 19.2),
                                          child: Container(
                                            height: 36,
                                            padding: EdgeInsets.only(
                                                left: 16.72, right: 14.4),
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 9.52),
                                                Text(
                                                  popular[index].name,
                                                  style: GoogleFonts.quicksand(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                    )),
                              ],
                            ),
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
