import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget watchTitle(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Image.asset('images/image 673.png',alignment: Alignment.centerLeft,scale: 0.99,),
        SizedBox(height: 10,),
        Text('The 1969 Artisinal\nPhilosopher',style: GoogleFonts.playfairDisplaySc(textStyle:TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600),letterSpacing: 1.2),),
        SizedBox(height: 20,),
        Text('Add scandinavian simplicity to your wrist with this minimal yet innovative timepiece. Each dial is handcrafted to perfection by the award winning horologist, Jakob Wagner',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18))),
        SizedBox(height: 35,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.brown[200],
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
            SizedBox(width: 15,),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 15,),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown,
              ),
            ),
          ],
        ),
        SizedBox(height: 35,),
        Divider(thickness: 2,color: Colors.grey[300],),
        SizedBox(height: 35,),
      ],
    ),
  );
}