import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget aboutTheAuthor(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35,),
        Text('About the designer',style: GoogleFonts.playfairDisplaySc(textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
        SizedBox(height: 30,),
        Container(
          height: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  child: Text('Our Chief Designer, Jakob Wagner is an award winning designer and horologist. His products are being sold every minute of everyday.',textAlign: TextAlign.start,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 17,color: Colors.grey[600]))),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 180,
                clipBehavior: Clip.antiAlias,
                child: Image(image: AssetImage('images/image 674.png'),fit: BoxFit.cover,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 35,),
        Divider(thickness: 2,color: Colors.grey[300],)
      ],
    ),
  );
}
