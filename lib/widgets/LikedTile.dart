import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch/models/watchui.dart';


Widget youMayAlsoLike(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35,),
        Text('You may also like',style: GoogleFonts.playfairDisplaySc(fontSize: 24,fontWeight: FontWeight.bold)),
        SizedBox(height: 30,),
        Container(
          height: 180,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: WatchData.watchTile.length,
            itemBuilder: (BuildContext context, index){
              final WatchTileImages image= WatchData.watchTile[index];
              return Container(
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
                child: Image.asset(image.imageTag),
              );
            },
          ),
        ),
        SizedBox(height: 20,),
      ],
    ),
  );
}