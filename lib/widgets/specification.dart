import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget specificationTile(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Specifications',style: GoogleFonts.playfairDisplaySc(textStyle:TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600)),),
        SizedBox(height: 25,),
        Text('Case Thickness :  7.84mm',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 10,),
        Text('Case Width :  40mm',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 10,),
        Text('Case Material :  3.16L Stainless Steel',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 10,),
        Text('Movement :  Japanese Quartz',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 10,),
        Text('Strap width :  20mm',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 10,),
        Text('Strap length :  16cm - 21cm',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 35,),
        Divider(thickness: 2,color: Colors.grey[300],),
      ],
    ),
  );
}
