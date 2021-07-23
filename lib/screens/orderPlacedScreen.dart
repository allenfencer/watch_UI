import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch/screens/watchScreen.dart';

class OrderPlaced extends StatelessWidget {
  static final String id='order_placed';
  const OrderPlaced({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     onPressed: (){
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.arrow_back_ios_outlined,size: 28,color: Colors.black54,),),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/orderplaced.png'),
            Text('Order Placed',style: GoogleFonts.playfairDisplaySc(textStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,letterSpacing: 1,color: Colors.black54)),),
            MaterialButton(
              onPressed: (){
                Navigator.pushNamed(context, HomePage.id);
              },
              minWidth: 300,
              height: 50,
              color: Colors.brown[300],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Text('Track Order',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),),
            ),
          ],
        ),
      ),
    );
  }
}
