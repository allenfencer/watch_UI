import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch/screens/cartScreen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.all(15),
        children: [
          Text('₹ 69,999',style:GoogleFonts.montserrat(fontWeight: FontWeight.w500,fontSize: 24),),
          MaterialButton(
              onPressed:(){
                Navigator.pushNamed(context, CartScreen.id);
              },
              minWidth: 140,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 50,
              elevation: 0,
              textColor: Colors.white,
              color: Colors.brown[300],
              padding: EdgeInsets.all(10),
              child: Text('Buy Now',style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
          )
        ],
      ),
    );
  }
}
