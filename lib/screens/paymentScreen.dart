import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch/screens/orderPlacedScreen.dart';

class PaymentScreen extends StatelessWidget {
  static final String id='payment_screen';
  const PaymentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined,size: 28,color: Colors.black,),),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Text('Select Payment Method',style: GoogleFonts.playfairDisplaySc(textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),),
              SizedBox(height: 15,),
              Divider(thickness: 2,color: Colors.grey[300],),
              SizedBox(height: 25,),
              Text('Saved Cards',style: GoogleFonts.playfairDisplaySc(textStyle: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),),
              visaCardWidget(imageAddress: 'images/Visa.png',lastDigits: 1234,validity: '01/22'),
              masterCardWidget(context,imageAddress: 'images/Mastercard.png',lastDigits: 5432,validity: '06/24'),
              visaCardWidget(imageAddress: 'images/Amex.png',lastDigits: 2649,validity: '08/25'),
              Container(
                height: 80,
                margin: EdgeInsets.only(top:15),
                padding: EdgeInsets.only(left: 20,top: 20),
                color: Colors.white,
                child: Text('+   Add a new card',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,color: Colors.brown[300],fontWeight: FontWeight.bold)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget visaCardWidget({String imageAddress,int lastDigits,String validity}){
  return Container(
    height: 80,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(imageAddress),
        Text('•••• $lastDigits',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
        Text('Validity: $validity',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),),
      ],
    ),
  );
}

Widget masterCardWidget(BuildContext context,{String imageAddress,int lastDigits,String validity}){
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imageAddress),
            Text('•••• $lastDigits',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
            Text('Validity: $validity',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.only(left: 15,right: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'CVV',
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(fontSize: 17,color: Colors.grey[600],fontWeight: FontWeight.w400)
                  ),
                ),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, OrderPlaced.id);
                },
                color: Colors.brown[300],
                textColor: Colors.white,
                minWidth: 100,
                height: 48,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(10),
                child: Text('Pay',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),),
              )
            ],
          ),
        ),
      ],
    ),
  );
}