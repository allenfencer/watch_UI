import 'package:flutter/material.dart';
import 'package:watch/screens/cartScreen.dart';
import 'package:watch/screens/orderPlacedScreen.dart';
import 'package:watch/screens/paymentScreen.dart';
import 'package:watch/screens/watchScreen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(context)=>HomePage(),
        CartScreen.id:(context)=>CartScreen(),
        PaymentScreen.id:(context)=>PaymentScreen(),
        OrderPlaced.id:(context)=>OrderPlaced(),
      },
    )
  );
}
